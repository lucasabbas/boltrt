package bolt.godot;

class CryptoSignalNames {
}
@:native("godot.Crypto")
extern class Crypto extends Reference {
    public function constantTimeCompare(trusted: Dynamic, received: Dynamic): Bool;
    public function decrypt(key: CryptoKey, ciphertext: Dynamic): Dynamic;
    public function encrypt(key: CryptoKey, plaintext: Dynamic): Dynamic;
    public function generateRandomBytes(size: Int): Dynamic;
    public function generateRsa(size: Int): CryptoKey;
    public function generateSelfSignedCertificate(key: CryptoKey, issuerName: String, notBefore: String, notAfter: String): X509Certificate;
    public function hmacDigest(hashType: Int, key: Dynamic, msg: Dynamic): Dynamic;
    public function sign(hashType: Int, hash: Dynamic, key: CryptoKey): Dynamic;
    public function verify(hashType: Int, hash: Dynamic, signature: Dynamic, key: CryptoKey): Bool;
    @:native("__new")
    public function new();
}
