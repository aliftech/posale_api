<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index', ['filter' => 'auth']);
$routes->post('register', 'Register::index');
$routes->post('login', 'Login::index');

$routes->get('category', 'Category::index', ['filter' => 'auth']);
$routes->post('category_add', 'Category::create', ['filter' => 'auth']);
$routes->post('category_edit', 'Category::update', ['filter' => 'auth']);
$routes->post('category_delete', 'Category::delete', ['filter' => 'auth']);
$routes->get('category_count', 'Category::count', ['filter' => 'auth']);

$routes->get('customer', 'Customer::index', ['filter' => 'auth']);
$routes->post('customer_add', 'Customer::create', ['filter' => 'auth']);
$routes->post('customer_edit', 'Customer::update', ['filter' => 'auth']);
$routes->post('customer_delete', 'Customer::delete', ['filter' => 'auth']);
$routes->get('customer_count', 'Customer::count', ['filter' => 'auth']);

$routes->get('gender', 'Gender::index', ['filter' => 'auth']);
$routes->post('gender_add', 'Gender::create', ['filter' => 'auth']);
$routes->post('gender_edit', 'Gender::update', ['filter' => 'auth']);
$routes->post('gender_delete', 'Gender::delete', ['filter' => 'auth']);

$routes->get('type', 'Type::index', ['filter' => 'auth']);
$routes->post('type_add', 'Type::create', ['filter' => 'auth']);
$routes->post('type_edit', 'Type::update', ['filter' => 'auth']);
$routes->post('type_delete', 'Type::delete', ['filter' => 'auth']);

$routes->get('inventory', 'Inventory::index', ['filter' => 'auth']);
$routes->post('inventory_add', 'Inventory::create', ['filter' => 'auth']);
$routes->post('inventory_edit', 'Inventory::update', ['filter' => 'auth']);
$routes->post('inventory_delete', 'Inventory::delete', ['filter' => 'auth']);
$routes->get('inventory_count', 'Inventory::count', ['filter' => 'auth']);

$routes->get('position', 'Position::index', ['filter' => 'auth']);
$routes->post('position_add', 'Position::create', ['filter' => 'auth']);
$routes->post('position_edit', 'Position::update', ['filter' => 'auth']);
$routes->post('position_delete', 'Position::delete', ['filter' => 'auth']);

$routes->get('product', 'Product::index', ['filter' => 'auth']);
$routes->post('product_add', 'Product::create', ['filter' => 'auth']);
$routes->post('product_edit', 'Product::update', ['filter' => 'auth']);
$routes->post('product_delete', 'Product::delete', ['filter' => 'auth']);
$routes->get('product_count', 'Product::count', ['filter' => 'auth']);

$routes->get('brand', 'Brand::index', ['filter' => 'auth']);
$routes->post('brand_add', 'Brand::create', ['filter' => 'auth']);
$routes->post('brand_edit', 'Brand::update', ['filter' => 'auth']);
$routes->post('brand_delete', 'Brand::delete', ['filter' => 'auth']);
$routes->get('brand_count', 'Brand::count', ['filter' => 'auth']);


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
