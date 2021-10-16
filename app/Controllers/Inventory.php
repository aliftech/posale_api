<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\InventoryModel;
use Firebase\JWT\JWT;
use \CodeIgniter\I18n\Time;

class Inventory extends ResourceController
{
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        //

        $model = new InventoryModel();
        $data = $model->orderBy('id', 'DESC')->findAll();
        $res = [
            'status' => 200,
            'error' => false,
            'data' => $data
        ];
        return $this->respond($res);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        //
    }

    /**
     * Return a new resource object, with default properties
     *
     * @return mixed
     */
    public function new()
    {
        //
    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    public function create()
    {
        //

        helper(['form']);

        $rules = [
            'code' => 'required|numeric',
            'product' => 'required',
            'category' => 'required',
            'type' => 'required',
            'suplyer' => 'required',
            'stock' => 'required|numeric',
            'buy' => 'required|numeric',
            'sell' => 'required|numeric',
            'status' => 'required'
        ];

        if(!$this->validate($rules)) {
            $res = [
                'status' => 400,
                'error' => true,
                'msg' => $this->validator->getErrors()
            ];
            return $this->respond($res);
        } else {
            $key = getenv('TOKEN_SECRET');
            $header = $this->request->getServer('HTTP_AUTHORIZATION');
            if(!$header) return $this->failUnauthorized('Token Required');
            $token = explode(' ', $header)[1];
    
            $decoded = JWT::decode($token, $key, ['HS256']);
            $username = $decoded->username;

            $model = new InventoryModel();

            $data = [
                'code' => $this->request->getVar('code'),
                'product' => $this->request->getVar('product'),
                'category' => $this->request->getVar('category'),
                'type' => $this->request->getVar('type'),
                'suplyer' => $this->request->getVar('suplyer'),
                'stock' => $this->request->getVar('stock'),
                'buy_price' => $this->request->getVar('buy'),
                'sell_price' => $this->request->getVar('sell'),
                'profit' => $this->request->getVar('sell') - $this->request->getVar('buy'),
                'status' => $this->request->getVar('status'),
                'created_by' => $username,
                'created_at' => Time::now()->setTimezone('Asia/Jakarta')
            ];

            $model->insert($data);

            $res = [
                'status' => 200,
                'error' => false,
                'msg' => 'Data have been added!'
            ];
            return $this->respond($res);
        }
    }

    /**
     * Return the editable properties of a resource object
     *
     * @return mixed
     */
    public function edit($id = null)
    {
        //
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    public function update($id = null)
    {
        //

        $id = $this->request->getVar('id');

        helper(['form']);

        $rules = [
            'code' => 'required|numeric',
            'product' => 'required',
            'category' => 'required',
            'type' => 'required',
            'suplyer' => 'required',
            'stock' => 'required|numeric',
            'buy' => 'required|numeric',
            'sell' => 'required|numeric',
            'status' => 'required'
        ];

        if(!$this->validate($rules)) {
            $res = [
                'status' => 400,
                'error' => true,
                'msg' => $this->validator->getErrors()
            ];
            return $this->respond($res);
        } else {
            $key = getenv('TOKEN_SECRET');
            $header = $this->request->getServer('HTTP_AUTHORIZATION');
            if(!$header) return $this->failUnauthorized('Token Required');
            $token = explode(' ', $header)[1];
    
            $decoded = JWT::decode($token, $key, ['HS256']);
            $username = $decoded->username;

            $model = new InventoryModel();

            $data = [
                'code' => $this->request->getVar('code'),
                'product' => $this->request->getVar('product'),
                'category' => $this->request->getVar('category'),
                'type' => $this->request->getVar('type'),
                'suplyer' => $this->request->getVar('suplyer'),
                'stock' => $this->request->getVar('stock'),
                'buy_price' => $this->request->getVar('buy'),
                'sell_price' => $this->request->getVar('sell'),
                'profit' => $this->request->getVar('sell') - $this->request->getVar('buy'),
                'status' => $this->request->getVar('status')
            ];

            $model->update($id, $data);
            $res = [
                'status' => 200,
                'error' => false,
                'msg' => 'Data have been updated!'
            ];
            return $this->respond($res);
        }
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    public function delete($id = null)
    {
        //

        $id = $this->request->getVar('id');

        $model = new InventoryModel();
        $data = $model->find($id);
        if($data) {
            $model->delete($id);
            $res = [
                'status' => 200,
                'error' => false,
                'msg' => 'Data have been deleted!'
            ];
            return $this->respond($res);
        } else {
            $res = [
                'status' => 400,
                'error' => true,
                'msg' => 'Something wrong! Please try again later'
            ];
            return $this->respond($res);
        }
    }
}
