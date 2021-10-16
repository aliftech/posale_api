<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Admins extends Migration
{
    public function up()
    {
        // CREATE MIGRATION ADMINS

        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true
            ],
            'email' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'username' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'password' => [
                'type' => 'VARCHAR',
                'constraint' => 200
            ],
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'photo' => [
                'type' => 'TEXT'
            ],
            'role' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'position' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'phone' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'address' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'gender' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'created' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
            'last_login' => [
                'type' => 'VARCHAR',
                'constraint' => 100
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('admins');
    }

    public function down()
    {
        //
    }
}
