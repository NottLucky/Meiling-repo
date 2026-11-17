using UnityEngine;

public class Character : MonoBehaviour
{
    public float speed = 1f;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float verticalInput = Input.GetAxisRaw("Vertical");

        transform.Translate(Vector3.up * verticalInput * speed * Time.deltaTime);
    }
}
