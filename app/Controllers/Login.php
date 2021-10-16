<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\AdminModel;
use Firebase\JWT\JWT;
use \CodeIgniter\I18n\Time;

class Login extends ResourceController
{
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    use ResponseTrait;
    public function index()
    {
        //LOGIN

        helper(['form']);

        $rules = [
            'username' => 'required',
            'password' => 'required|min_length[8]'
        ];

        if(!$this->validate($rules))
        {
            return $this->fail($this->validator->getErrors());
        } else {
            $model = new AdminModel();

            $username = $this->request->getVar('username');

            $admin = $model->where("username", $this->request->getVar('username'))->first();

            if(!$admin)
            {
                return $this->failNotFound("Username not found");
            } else {
                $verified = password_verify($this->request->getVar('password'), $admin['password']);

                if(!$verified)
                {
                    return $this->fail("Wrong password!");
                } else {

                    $model->where('username', $username);
                    $model->set('last_login', Time::now()->setTimezone('Asia/Jakarta'));
                    $model->update();

                    $key = getenv('TOKEN_SECRET');

                    $payload = [
                        "iat" => 1356999524,
                        "nbf" => 1357000000,
                        "uid" => $admin['id'],
                        "username" => $admin['username'],
                        "role" => $admin['role']
                    ];

                    $token = JWT::encode($payload, $key);

                    $rest = [
                        'status' => 200,
                        'error'  => null,
                        'data' => $token
                    ];
 
                    return $this->respond($rest);
                }
            }
        }
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
