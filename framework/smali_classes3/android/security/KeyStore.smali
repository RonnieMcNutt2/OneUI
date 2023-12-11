.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field private static final KEY_STORE:Landroid/security/KeyStore;

.field public static final NO_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/security/KeyStore;

    invoke-direct {v0}, Landroid/security/KeyStore;-><init>()V

    sput-object v0, Landroid/security/KeyStore;->KEY_STORE:Landroid/security/KeyStore;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 1

    .line 52
    sget-object v0, Landroid/security/KeyStore;->KEY_STORE:Landroid/security/KeyStore;

    return-object v0
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 4
    .param p0, "errorCode"    # I

    .line 145
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x2710

    const-string v2, "Should not be called."

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAuthToken([B)I
    .registers 3
    .param p1, "authToken"    # [B

    .line 129
    invoke-static {p1}, Landroid/security/Authorization;->addAuthToken([B)I

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public listUidsOfAuthBoundKeys()[I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeviceOffBody()V
    .registers 1

    .line 136
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->onDeviceOffBody()V

    .line 137
    return-void
.end method

.method public state()Landroid/security/KeyStore$State;
    .registers 2

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .registers 4
    .param p1, "userId"    # I

    .line 58
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->getState(I)I

    move-result v0

    .line 59
    .local v0, "userState":I
    packed-switch v0, :pswitch_data_16

    .line 67
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 65
    :pswitch_d
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    .line 63
    :pswitch_10
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    .line 61
    :pswitch_13
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    return v0
.end method
