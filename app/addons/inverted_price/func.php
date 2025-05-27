<?php

function fn_my_changes_gather_additional_product_data_post(&$product)
{
    if ($product['clean_price'] != $product['taxed_price'] && AREA == 'C') {
        $product['clean_price'] = $product['taxed_price'];
        $product['taxed_price'] = $product['price'];
        $product['price'] = $product['clean_price'];
    }
}