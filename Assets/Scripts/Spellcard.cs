using UnityEngine;

[CreateAssetMenu(fileName = "Spellcard", menuName = "Scriptable Objects/Spellcard")]
public abstract class Spellcard : ScriptableObject
{
    public string nombre;
    public float cooldown;
    public float chargetime;

    public abstract void Lanzar();
}
