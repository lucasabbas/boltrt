package lucidkit.godot;

@:native("godot.Crypto")
extern class Crypto extends Reference {
    public function constant_time_compare(trusted: PoolByteArray, received: PoolByteArray): Bool;
    public function decrypt(key: CryptoKey, ciphertext: PoolByteArray): PoolByteArray;
    public function encrypt(key: CryptoKey, plaintext: PoolByteArray): PoolByteArray;
    public function generate_random_bytes(size: Int): PoolByteArray;
    public function generate_rsa(size: Int): CryptoKey;
    public function generate_self_signed_certificate(key: CryptoKey, issuer_name: String, not_before: String, not_after: String): X509Certificate;
    public function hmac_digest(hash_type: Int, key: PoolByteArray, msg: PoolByteArray): PoolByteArray;
    public function sign(hash_type: Int, hash: PoolByteArray, key: CryptoKey): PoolByteArray;
    public function verify(hash_type: Int, hash: PoolByteArray, signature: PoolByteArray, key: CryptoKey): Bool;
}
