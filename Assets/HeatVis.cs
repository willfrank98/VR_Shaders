using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeatVis : MonoBehaviour
{
    public Transform center;
    Renderer render;

    // Start is called before the first frame update
    void Start()
    {
        render = GetComponent<Renderer>();

        // sets center of object
        render.material.SetVector("_ObjectCenter", center.position);
    }

    // Update is called once per frame
    void Update()
    {
        //float heat = Mathf.PingPong(Time.time, 1.0f);
        //render.material.SetFloat("_HeatAmount", heat);
    }
}
