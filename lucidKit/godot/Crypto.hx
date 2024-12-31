package lucidKit.godot;

class CryptoSignalNames {
}
@:native("godot.Crypto")
extern class Crypto extends Reference {
    public function constantTimeCompare(trusted: PoolByteArray, received: PoolByteArray): Bool;
    public function decrypt(key: CryptoKey, ciphertext: PoolByteArray): PoolByteArray;
    public function encrypt(key: CryptoKey, plaintext: PoolByteArray): PoolByteArray;
    public function generateRandomBytes(size: Int): PoolByteArray;
    public function generateRsa(size: Int): CryptoKey;
    public function generateSelfSignedCertificate(key: CryptoKey, issuerName: String, notBefore: String, notAfter: String): X509Certificate;
    public function hmacDigest(hashType: Int, key: PoolByteArray, msg: PoolByteArray): PoolByteArray;
    public function sign(hashType: Int, hash: PoolByteArray, key: CryptoKey): PoolByteArray;
    public function verify(hashType: Int, hash: PoolByteArray, signature: PoolByteArray, key: CryptoKey): Bool;
    @:native("__new")
    public function new();
}
