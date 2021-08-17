<?php

namespace App\Http\Controllers;

use App\Models\Reporte;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use DataTables;


class ReporteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $ciudad = $request->route('ciudad');
        $response = Http::get(env('API_URL'), [
            'q' => $ciudad,
            'appid' => env('API_ID'),
        ]);
        $data = $response->json();
       // dd($data);
        return view('reporte', compact('data'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $data = json_decode($request->datacase, TRUE);
        $reporte = new Reporte();
        //dd($data);
        $reporte->pais  = $data['sys']['country'];
        $reporte->ciudad = $data['name'];
        $reporte->main = $data['weather'][0]['main'];
        $reporte->description = $data['weather'][0]['description'];
        $reporte->icon= $data['weather'][0]['icon'];
        $reporte->humidity= $data['main']['humidity'];
        $reporte->lon= $data['coord']['lon'];
        $reporte->lat= $data['coord']['lat'];
        $reporte->save();
        return view('ver-reporte');

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
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        if ($request->ajax()) {
            $data = Reporte::select('*');
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                           
                           //$btn = '<a href="/clima/'. $data->ciudad .'" class="edit btn btn-primary btn-sm">Ver</a>';
                           //return '<h6><a href="/users/'. $user->id .'">'. $user->id .'</a></h6>';

                            //return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        
        return view('ver-reporte');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function edit(Reporte $reporte)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Reporte $reporte)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function destroy(Reporte $reporte)
    {
        //
    }
}
