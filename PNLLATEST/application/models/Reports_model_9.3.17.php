<?php
/*
    Description : Model for Reports
    Author      : Deepak kv
    Date        : 28/10/2016
*/
class Reports_model extends CI_Model
{
	public function __construct()
    {
        parent::__construct();
    } 
    
	public function get_productlist()
    {
		$sql1="SELECT 	concat(	title,' ',variants_title) 'label' ,variants_id 'value' FROM  `rev_shopify_product` ";
		$query1= $this->db->query($sql1);
	   return $query_res1=$query1->result();
	}
	public function get_storelist()
    {
		$sql1="SELECT id 'value' ,store_name 'label' FROM  `rev_storinfo` ";
		$query1= $this->db->query($sql1);
	   return $query_res1=$query1->result();
	}
	public function get_setup_productlist()
    {
		$sql1="SELECT *  FROM  `rev_setup_productlist` ";
		$query1= $this->db->query($sql1);
	   $query_res1=$query1->result();
	  $orderno=0;
	  $supplier_cost=0;
	  $fulfillment=0;
	  $gatewaycharge=0;
	  
	  foreach($query_res1 as $k=>$product)
			{
				 $variants_id=$product->product_id;
				  $id=$product->id;
				//$report_name=$product->report_name;
				 $dist_cost=$product->dist_cost;
				 $dist_shippingcost=$product->dist_shippingcost;
				 
				 $packaging_cost=$product->packaging_cost;
				 $shipping_cost=$product->shipping_cost;
				 $gate_charge_fix=$product->gate_charge_fix;
				 $gate_charge_percent=$product->gate_charge_percent;
				 
				 
				 
				 
				 
				 
				 
				  $sql12="SELECT SUM(  `line_items_quantity` ) orders,SUM( `total_price` ) 'sales'
					    FROM  `rev_orders` 
						where line_items_variant_id=".$variants_id."";
			$query12= $this->db->query($sql12);
			$query_res1_p=$query12->result();
			
						if(!empty($query_res1_p))  
						{
							
							 $productandorder[$k]['report_name']=$product->report_name;
							$productandorder[$k]['setup_date']=$product->setup_date;
							 $productandorder[$k]['total_price']=$query12->row()->sales;
							/* $orderno=$query12->row()->orders;
							
							
							$supplier_cost=$dist_cost+$dist_shippingcost;
							$supplier_cost=$supplier_cost*$orderno;
							
							$fulfillment=$packaging_cost+$shipping_cost;
							$fulfillment=$fulfillment*$orderno;
							
							
							
							$productandorder[$k]['report_name']=$report_name;
							$productandorder[$k]['report_name']=$product->setup_date;
							$productandorder[$k]['order']=$orderno;
										
										$sql_stripe="SELECT SUM(  `line_items_quantity` ) gatewayorders
												FROM  `rev_orders` 
												where line_items_variant_id=".$variants_id." and `gateway` =  'stripe' ";
									$query_stripe= $this->db->query($sql_stripe);
									$query_res_stripe=$query_stripe->result();
									 */
									
									/* if(!empty($query_res_stripe))  
									{
										
										if($gate_charge_fix>0)
										{
											$total_stripe_order=$query_stripe->row()->total_stripe_order;
										$stripecharge=(($total_stripe_order*$gate_charge_fix;
										
										}
										if($gate_charge_percent>0)
										{
											$total_stripe_order=$query_stripe->row()->total_stripe_order;
										$charge=((($total_stripe_order*$supplier_cost)*$gate_charge_percent)/100);
										$stripe_order=$stripe_order+$charge;
										
										}
										 
										
									}
							
							 */
						}
						else
						{
							$productandorder[$k]['report_name']=$product->report_name;
							$productandorder[$k]['setup_date']=$product->setup_date;
							 $productandorder[$k]['total_price']=$query12->row()->sales;
							
						}
						
						$productandorder[$k]['id']=$id;
				
			}
	  
	  return $productandorder;
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	}
	
	public function view_setup_product($reportID)
    {
		 
	  $sql1="SELECT *  FROM  `rev_setup_productlist` where id=".$reportID;
	  $query1= $this->db->query($sql1);
	  $query_res1=$query1->result();
	  $orderno=0;
	  $supplier_cost=0;
	  $fulfillment=0;
	  $gatewaycharge=0;
	  $stripecharge=0;
	  foreach($query_res1 as $k=>$product)
			{
				 $variants_id=$product->product_id;
				  $id=$product->id;
				$report_name=$product->report_name;
				 $dist_cost=$product->dist_cost;
				 $dist_shippingcost=$product->dist_shippingcost;
				 
				 $packaging_cost=$product->packaging_cost;
				 $shipping_cost=$product->shipping_cost;
				 $gate_charge_fix=$product->gate_charge_fix;
				 $gate_charge_percent=$product->gate_charge_percent;
				 
				 
				 
				 
				 
				 
				 
				  $sql12="SELECT SUM(  `line_items_quantity` ) orders,SUM( `total_price` ) 'sales'
					    FROM  `rev_orders` 
						where line_items_variant_id=".$variants_id."";
			$query12= $this->db->query($sql12);
			$query_res1_p=$query12->result();
			
						if(!empty($query_res1_p))  
						{
							
							$orderno=$query12->row()->orders;
							$supplier_cost=$dist_cost+$dist_shippingcost;
							$supplier_cost=$supplier_cost*$orderno;
							
							$fulfillment=$packaging_cost+$shipping_cost;
							$fulfillment=$fulfillment*$orderno;
							$sql_stripe="SELECT SUM(  `line_items_quantity` ) gatewayorders
												FROM  `rev_orders` 
												where line_items_variant_id=".$variants_id." and `gateway` =  'stripe' ";
									$query_stripe= $this->db->query($sql_stripe);
									$query_res_stripe=$query_stripe->result();
									
							 if(!empty($query_res_stripe))  
									{
										
										 if($gate_charge_fix>0)
										{
											$total_stripe_order=$query_stripe->row()->gatewayorders;
										$stripecharge=$total_stripe_order*$gate_charge_fix;
										
										}
										if($gate_charge_percent>0)
										{
											$total_stripe_order=$query_stripe->row()->gatewayorders;
										$stripecharge=((($total_stripe_order*$supplier_cost)*$gate_charge_percent)/100);
										} 
										 
										
									}
							
							$productandorder[$k]['report_name']=$report_name;
							$productandorder[$k]['setup_date']=$product->setup_date;
							$productandorder[$k]['order']=$orderno;
							$productandorder[$k]['total_price']=$query12->row()->sales;
										
							
						$productandorder[$k]['supplier_cost']=$supplier_cost;							
						$productandorder[$k]['fulfillment']=$fulfillment;	
						$productandorder[$k]['stripecharge']=$stripecharge;	 	

                        $totalsales=$query12->row()->sales;
						$productandorder[$k]['netsales']= $totalsales - $stripecharge;	
						$productandorder[$k]['net']=$totalsales - $stripecharge - $fulfillment - $supplier_cost;
						$productandorder[$k]['netaov']=$totalsales/$orderno;
						$productandorder[$k]['cpa']=0;	






						




						
							
						}
						else
						{ 
							$productandorder[$k]['report_name']=$report_name;
							$productandorder[$k]['setup_date']=$product->setup_date;
							$productandorder[$k]['order']=$orderno;
							$productandorder[$k]['total_price']=$query12->row()->sales;
										
							
						$productandorder[$k]['supplier_cost']=0;							
						$productandorder[$k]['fulfillment']=0;	
						$productandorder[$k]['stripecharge']=0;	
						
						
						
						
						
						
							
						}
						
						$productandorder[$k]['id']=$id;
						
						
						$productandorder[$k]['product_name']=$product->product_name;
						$productandorder[$k]['store_name']=$product->store_name;
						$productandorder[$k]['dist_cost']=$product->dist_cost;
						$productandorder[$k]['dist_shippingcost']=$product->dist_shippingcost;
				       $productandorder[$k]['packaging_cost']=$product->packaging_cost;
					   $productandorder[$k]['shipping_cost']=$product->shipping_cost;
					   $productandorder[$k]['gate_charge_fix']=$product->gate_charge_fix;
					   $productandorder[$k]['gate_charge_percent']=$product->gate_charge_percent;
			}
	  
	  return $productandorder;
	  
	  
	  
	  
	}
	
	public function report_delete($id)
	{
		  $sql1="delete FROM  `rev_setup_productlist` where id=".$id;
		$query1= $this->db->query($sql1);
	   return 1;
	}
	
	public function get_reports_data($datevalue)
    {
			/* $sql="SELECT * FROM `rev_orders`";
			$query= $this->db->query($sql);
			$query_res=$query->result();
			echo "<pre>";print_r($query_res); 
			return 1; */
			 $sql1="SELECT 	concat(	title,' ',variants_title) 'product' ,variants_id FROM  `rev_shopify_product` limit 10";
			$query1= $this->db->query($sql1);
			$query_res1=$query1->result();

			//$productlist=json_encode($query_res1);
			 $productandorder='';
			 $suppliertotal_cost=0;
			 $stripe_order=0;
			foreach($query_res1 as $k=>$product)
			{
				  $variants_id=$product->variants_id;
				 $product_title=$product->product;
				 //echo "<br>";
				   $sql12="SELECT SUM(  `line_items_quantity` ) orders
					    FROM  `rev_orders` 
						where line_items_variant_id=".$variants_id." and YEAR(  `updated_at` )='".$datevalue."'
					    GROUP BY YEAR(  `updated_at` ) ";
			$query12= $this->db->query($sql12);
			$query_res1_p=$query12->result();
			if(!empty($query_res1_p))  
			{
				$orderno=$query12->row()->orders;
				
				$productandorder[$k]['product']=$product_title;
				$productandorder[$k]['order']=$orderno;
				
			}
			else
			{
				$productandorder[$k]['product']=$product_title;
				$productandorder[$k]['order']=0;
			}

			
			  $sql_suppliercost="SELECT SUM(  `cost` ) cost,SUM(  `quantity` ) quantity
					    FROM  `rev_supplier_orders` 
						where product_id=".$variants_id." and YEAR(`date`)='".$datevalue."'
					    GROUP BY YEAR(  `date` ) ";
			
			$query_suppliercost= $this->db->query($sql_suppliercost);
			$query_res1_supp=$query_suppliercost->result();
			if(!empty($query_res1_supp))  
			{
				$suppliertotal_cost=$suppliertotal_cost+$query_suppliercost->row()->cost;
			}
			
			
			
			
			$sql_stripe="SELECT SUM(  `line_items_quantity` ) orders,SUM(  `total_price` ) 'total_stripe_order'
					    FROM  `rev_orders` 
						where line_items_variant_id=".$variants_id." and YEAR(  `updated_at` )='".$datevalue."' and `gateway` =  'stripe'
					    GROUP BY YEAR(  `updated_at` ) ";
			$query_stripe= $this->db->query($sql_stripe);
			$query_res_stripe=$query_stripe->result();
			
			
			if(!empty($query_res_stripe))  
			{
				$orderno=$query_stripe->row()->orders;
				$total_stripe_order=$query_stripe->row()->total_stripe_order;
				$charge=(($total_stripe_order*2.6)/100)+0.30;
				$stripe_order=$stripe_order+$charge;
				
			}
			
			
			
			
			
			
			
			
			  
			}




			
			
			
			 $sql="SELECT SUM(  `total_price` )  'sales', YEAR(  `updated_at` )  'years', SUM(  `line_items_quantity` ) orders 
					FROM  `rev_orders` where  YEAR(  `updated_at` )='".$datevalue."' 
					GROUP BY YEAR(  `updated_at` ) ";
			$query= $this->db->query($sql);
			$query_res=$query->result(); 
			/* foreach($query_res as $k=>$data)
			{
				array_push($query_res[$k],$query_res1);  
			} */
			
			//echo "<pre>";print_r($suppliertotal_cost); 
			array_push($query_res,$productandorder);
			array_push($query_res,array('suppliertotal_cost'=>$suppliertotal_cost));
			
			
			array_push($query_res,array('fulfillment'=>3.10));
			array_push($query_res,array('stripeorder'=>$stripe_order));
			
			
			         $productandorder2='';
					 $suppliertotal_cost_inner=0;
					 $stripe_order=0;
					 $orderno=0;
					 $orderno_stripe=0;
			         $total_stripe_order=0;
						$stripe_order=0;
				   
			for($i=1;$i<=12;$i++) 
			{
				  $sql_sam="SELECT SUM(  `total_price` )  'sales', YEAR(  `updated_at` )  'years', SUM(  `line_items_quantity` ) orders 
					FROM  `rev_orders` where  YEAR(  `updated_at` )='".$datevalue."' 
					 AND MONTH(  `updated_at` ) =".$i;
			$query_sam= $this->db->query($sql_sam);
			$query_res_sam=$query_sam->result(); 
			//echo "<pre>";print_r($query_res_sam);
		    $res="s".$datevalue.'_'.$i;
			//$res="datavalue";
			  
			
			
					foreach($query_res1 as $k=>$product)
					{
							  $variants_id=$product->variants_id;
							 //echo "<br>";
							 $product_title=$product->product;
							 //echo "<br>";
							       $sql12_inner="SELECT SUM(  `line_items_quantity` ) orders
									FROM  `rev_orders` 
									where line_items_variant_id=".$variants_id." and YEAR(  `updated_at` )='".$datevalue."' 
									 AND MONTH(  `updated_at` ) =".$i;
						$query12_inner= $this->db->query($sql12_inner);
						$query_res1_mont_p=$query12_inner->result();
						if(!empty($query_res1_mont_p))  
						{
							$orderno=$query12_inner->row()->orders;
							
							$productandorder2[$k]['product']=$product_title;
							if($orderno>0)
							{
								$productandorder2[$k]['order']=$orderno;
							}
							else
							{
								$productandorder2[$k]['order']=0;
							}
							
							
						}
						else
						{
							$productandorder2[$k]['product']=$product_title;
							$productandorder2[$k]['order']=0;
						}
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						

						
		                         $sql_suppliercost_inner="SELECT SUM(  `cost` ) cost,SUM(  `quantity` ) quantity
									FROM  `rev_supplier_orders` 
									where product_id=".$variants_id." 
									and YEAR(`date`)='".$datevalue."'
									AND MONTH(  `date` ) =".$i;
				
						$query_suppliercost_inner= $this->db->query($sql_suppliercost_inner);
						$query_res1_m_supp_inner=$query_suppliercost_inner->result();
						if(!empty($query_res1_m_supp_inner))  
						{
					$suppliertotal_cost_inner=$suppliertotal_cost_inner+$query_suppliercost_inner->row()->cost;
						}
						
						
						  
						
						 $sql_stripe="SELECT SUM(  `line_items_quantity` ) orders,SUM(  `total_price` ) 'total_stripe_order'
									FROM  `rev_orders` 
									where line_items_variant_id=".$variants_id." and YEAR(  `updated_at` )='".$datevalue."' 
									and `gateway` =  'stripe'
									AND MONTH(  `updated_at` ) =".$i;
									
						//echo "<br>";			
						$query_stripe= $this->db->query($sql_stripe);
						$query_res_stripe=$query_stripe->result();
						//echo "<pre>";print_r($query_res_stripe);
						
						if(!empty($query_res_stripe))  
						{
							//$orderno_stripe=$query_stripe->row()->orders;
							$total_stripe_order=$query_stripe->row()->total_stripe_order;
							if($total_stripe_order>0)
							{
								$charge=(($total_stripe_order*2.6)/100)+0.30;
							$stripe_order=$stripe_order+$charge;
							}
							
							
						} 
			
			
			  
					}
			
			
			 //echo "<pre>";print_r($query_res_sam);exit;
			
				 array_push($query_res_sam,$productandorder2);
				//array_push($query_res_sam,array('suppliertotal_cost'=>$suppliertotal_cost));
				array_push($query_res_sam,array('suppliertotal_cost'=>$suppliertotal_cost_inner));
				
				
				array_push($query_res_sam,array('fulfillment'=>3.10));
				array_push($query_res_sam,array('stripeorder'=>$stripe_order));
			     
				 
				if(!empty($query_res_sam))
					{
						array_push($query_res,array($res=>$query_res_sam));
						//array_push($query_res,array('fulfillment'=>3.10));
					} 
					 else
					{
						array_push($query_res,array($res=>'0'));
					}
			
			    
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			return $query_res; 
		
    }
	
    
}

