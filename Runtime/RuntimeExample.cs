using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace PackageName.RuntimeExample
{

    [DisallowMultipleComponent]
    [AddComponentMenu("PackageName/RuntimeExample")]
    public class RuntimeExample : MonoBehaviour
    {
        // Use this for initialization
        void Start()
        {
            Debug.Log("Hello world!");
        }
    }
}