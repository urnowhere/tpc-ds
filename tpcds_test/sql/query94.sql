




select  
     count(distinct ws1.ws_order_number) as order_count
    ,sum(ws1.ws_ext_ship_cost) as total_shipping_cost
    ,sum(ws1.ws_net_profit) as total_net_profit
  from
     web_sales ws1
    ,date_dim
    ,web_site
    ,customer_address
  where
      cast(d_date as date) between cast('1999-05-01' as date) and 
             (cast('1999-05-01' as date) + interval '60' day)
  and ws1.ws_ship_date_sk = d_date_sk
  and ws1.ws_ship_addr_sk = ca_address_sk
  and ca_state = 'TX'
  and ws1.ws_web_site_sk = web_site_sk
  and web_company_name = 'pri'
  and exists (select *
              from web_sales ws2
              where ws1.ws_order_number = ws2.ws_order_number
                and ws1.ws_warehouse_sk <> ws2.ws_warehouse_sk)
  and not exists (select *
                 from web_returns wr1
                 where ws1.ws_order_number = wr1.wr_order_number)
  order by ws1.ws_order_number
  limit 100
