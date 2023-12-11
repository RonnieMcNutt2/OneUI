.class public abstract Landroid/security/keystore/KeyProperties$EcCurve;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EcCurve"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromKeymasterCurve(I)I
    .registers 2
    .param p0, "ecCurve"    # I

    .line 953
    packed-switch p0, :pswitch_data_12

    .line 964
    const/4 v0, -0x1

    return v0

    .line 962
    :pswitch_5
    const/16 v0, 0x209

    return v0

    .line 960
    :pswitch_8
    const/16 v0, 0x180

    return v0

    .line 958
    :pswitch_b
    const/16 v0, 0x100

    return v0

    .line 955
    :pswitch_e
    const/16 v0, 0xe0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public static toKeymasterCurve(Ljava/security/spec/ECParameterSpec;)I
    .registers 3
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 934
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 935
    .local v0, "keySize":I
    sparse-switch v0, :sswitch_data_1a

    .line 945
    const/4 v1, -0x1

    return v1

    .line 943
    :sswitch_11
    const/4 v1, 0x3

    return v1

    .line 941
    :sswitch_13
    const/4 v1, 0x2

    return v1

    .line 939
    :sswitch_15
    const/4 v1, 0x1

    return v1

    .line 937
    :sswitch_17
    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_1a
    .sparse-switch
        0xe0 -> :sswitch_17
        0x100 -> :sswitch_15
        0x180 -> :sswitch_13
        0x209 -> :sswitch_11
    .end sparse-switch
.end method
