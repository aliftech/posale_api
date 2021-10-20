<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\BrandModel;
use Firebase\JWT\JWT;
use \CodeIgniter\I18n\Time;

class Brand extends ResourceController
{
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        //

        $model = new BrandModel();
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
            'brand' => 'required'
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

            $model = new BrandModel();

            $data = [
                'code' => $this->request->getVar('code'),
                'brand' => $this->request->getVar('brand'),
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
            'brand' => 'required'
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

            $model = new BrandModel();

            $data = [
                'code' => $this->request->getVar('code'),
                'brand' => $this->request->getVar('brand')
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

        $model = new BrandModel();
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
                'msg' => 'Something wrong! Please try again later.'
            ];
            return $this->respond($res);
        }
    }

    public function count()
    {
        $model = new BrandModel();
        $count = $model->countAll();

        if($count) {
            $res = [
                'status' => 200,
                'error' => false,
                'count' => $count
            ];
            return $this->respond($res);
        } else {
            return $this->failNotFound('No data yet');
        }
    }
}
