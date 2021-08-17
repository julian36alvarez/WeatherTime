<?php

namespace App\Http\Controllers;

use App\Models\Lugares;
use Illuminate\Http\Request;
use DataTables;

class LugaresController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Lugares::select('*');
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                           
                           $btn = '<a href="/clima/'. $data->ciudad .'" class="edit btn btn-primary btn-sm">Ver</a>';
                           //return '<h6><a href="/users/'. $user->id .'">'. $user->id .'</a></h6>';

                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        
        return view('cities');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Lugares  $lugares
     * @return \Illuminate\Http\Response
     */
    public function show(Lugares $lugares)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Lugares  $lugares
     * @return \Illuminate\Http\Response
     */
    public function edit(Lugares $lugares)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lugares  $lugares
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lugares $lugares)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Lugares  $lugares
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lugares $lugares)
    {
        //
    }
}
