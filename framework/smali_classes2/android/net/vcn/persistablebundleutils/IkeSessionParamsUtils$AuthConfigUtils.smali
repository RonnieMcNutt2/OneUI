.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AuthConfigUtils"
.end annotation


# static fields
.field private static final AUTH_METHOD_KEY:Ljava/lang/String; = "AUTH_METHOD_KEY"

.field private static final IKE_AUTH_METHOD_EAP:I = 0x3

.field private static final IKE_AUTH_METHOD_PSK:I = 0x1

.field private static final IKE_AUTH_METHOD_PUB_KEY_SIGNATURE:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPersistableBundle(I)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "type"    # I

    .line 292
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 293
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "AUTH_METHOD_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 294
    return-object v0
.end method

.method public static setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 8
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 301
    const-string v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    const-string v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    const-string v0, "AUTH_METHOD_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    .local v1, "localMethodType":I
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "remoteMethodType":I
    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_90

    .line 336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid EAP method type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :pswitch_31
    if-ne v0, v2, :cond_37

    .line 332
    invoke-static {p0, p1, p2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthEapConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 334
    return-void

    .line 327
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "When using EAP for local authentication, expect remote auth method to be digital signature based, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :pswitch_50
    if-ne v0, v2, :cond_56

    .line 322
    invoke-static {p0, p1, p2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 324
    return-void

    .line 318
    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect remote auth method to be digital signature based, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :pswitch_6f
    const/4 v2, 0x1

    if-ne v0, v2, :cond_76

    .line 313
    invoke-static {p0, p1, p2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthPskConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 315
    return-void

    .line 309
    :cond_76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect remote auth method to be PSK based, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_50
        :pswitch_31
    .end packed-switch
.end method

.method public static toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "authConfig"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 270
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    if-eqz v0, :cond_12

    .line 271
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    .line 272
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    nop

    .line 273
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthPskConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 274
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    :cond_12
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    const/4 v1, 0x2

    if-eqz v0, :cond_24

    .line 275
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    .line 276
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    nop

    .line 277
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 278
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    :cond_24
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    if-eqz v0, :cond_35

    .line 279
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    .line 280
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    nop

    .line 281
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 280
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 282
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    :cond_35
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    if-eqz v0, :cond_47

    .line 283
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    .line 284
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    nop

    .line 285
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthEapConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 287
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid IkeAuthConfig subclass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
