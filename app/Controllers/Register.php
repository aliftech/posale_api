<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\AdminModel;
use \CodeIgniter\I18n\Time;

class Register extends ResourceController
{
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        // ADD NEW ADMIN

        helper(['form']);

        $rules = [
            'username' => 'required',
            'email' => 'required|valid_email',
            'name' => 'required',
            'gender' => 'required',
            'role' => 'required',
            'password' => 'required|min_length[8]',
            'confirm' => 'matches[password]'
        ];
        if(!$this->validate($rules)) return $this->fail($this->validator->getErrors());

        $data = [
            'username' => $this->request->getVar('username'),
            'email' => $this->request->getVar('email'),
            'name' => $this->request->getVar('name'),
            'gender' => $this->request->getVar('gender'),
            'role' => $this->request->getVar('role'),
            'password' => password_hash($this->request->getVar('password'), PASSWORD_BCRYPT),
            'created' => Time::now()->setTimezone('Asia/Jakarta'),
            'photo' => 'default.png'
        ];

        $model = new AdminModel();

        $registered = $model->save($data);
        $this->respondCreated($registered);
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
