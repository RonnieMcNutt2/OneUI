.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$DeviceAccountPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceAccountPolicy"
.end annotation


# static fields
.field public static final ACCOUNT_REMOVAL_ALLOWED:Ljava/lang/String; = "isAccountRemovalAllowed"

.field public static final ACCOUNT_REMOVAL_ALLOWED_AS_USER:Ljava/lang/String; = "isAccountRemovalAllowedAsUser"

.field public static final NAME:Ljava/lang/String; = "DeviceAccountPolicy"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider2/DeviceAccountPolicy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
