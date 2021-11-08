<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\RoleMenuModel;
use App\Models\MenuModel;
use Firebase\JWT\JWT;
use \CodeIgniter\I18n\Time;

class RoleMenu extends ResourceController
{
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        //

        $model = new RoleMenuModel();
        $data = $model->orderBy('role', 'ASC')->findAll();
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

        $id = $this->request->getVar('id');

        $model = new RoleMenuModel();
        $data = $model->where('id', $id)->first();
        $res = [
            'status' => 200,
            'error' => false,
            'data' => $data
        ];
        return $this->respond($res);
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
            'role' => 'required'
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

            $role = $this->request->getVar('role');

            $model = new RoleMenuModel();
            $modelMenu = new MenuModel();

            $menu = $this->request->getVar('menu');

            $dataMenu = $modelMenu->orderBy('number', 'ASC')->findAll();
            $data = [
                'role' => $role,
                'number' => $dataMenu['number'],
                'menu' => $dataMenu['menu'],
                'icon' => $dataMenu['icon'],
                'link' => $dataMenu['link'],
                'parent' => $dataMenu['parent'],
                'status' => 0,
                'created_by' => $username,
                'created_at' => Time::now()->setTimezone('Asia/Jakarta')
            ];
            $model->insert($data);

            for($i = 0; $i < count($menu); $i++) {
                $rowMenu = $menu[$i];
                $roleRow = [
                    'menu' => $rowMenu,
                    'role' => $role
                ];

                $data = [
                    'status' => 1
                ];

                $model->update($roleRow, $data);
            }
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
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    public function delete($id = null)
    {
        //
    }
}
