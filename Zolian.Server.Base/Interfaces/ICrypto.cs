﻿using Darkages.Enums;

namespace Darkages.Interfaces;

public interface ICrypto
{
    byte[] Salt { get; set; }
    byte Seed { get; set; }
    bool ShouldOpCodeClientBeEncrypted(byte opCode);
    void Decrypt(ref Span<byte> buffer, byte opCode, byte sequence);
    void DecryptDialog(ref Span<byte> buffer);
    void Encrypt(ref Span<byte> buffer, byte opCode, byte sequence);
    EncryptionType GetClientEncryptionType(byte opCode);
    bool ShouldOpCodeServerBeEncrypted(byte opCode);
    EncryptionType ServerEncryptionType(byte opCode);
    byte[] GenerateKey(ushort a, byte b);
    byte[] GenerateKeySalts(string seed);
    string GetMd5Hash(string value);
}
