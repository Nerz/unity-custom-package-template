using UnityEngine;
using UnityEditor;
using System;

namespace PackageName.EditorExample
{

    public class EditorExample : EditorWindow
    {
        [MenuItem("PackageName/ExampleMethod")]
        public static void ExampleMethod()
        {
            Debug.Log("ExampleMethod");
        }
    }
}