using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShaderUpdater : MonoBehaviour
{
	public GameObject[] gameObjects;
	public Material[] materials;

	private int matIndex = 0;

    // Start is called before the first frame update
    void Start()
    {
        
    }

	// Update is called once per frame
	void Update()
	{
		//if (Input.GetKeyDown(KeyCode.RightArrow))
		//{
		//	matIndex++;

		//	if (matIndex >= materials.Length)
		//	{
		//		matIndex = 0;
		//	}
		//	foreach (GameObject obj in objectsToChangeMat)
		//	{
		//		obj.GetComponent<Renderer>().material = materials[matIndex];
		//	}
		//}
	}
}
