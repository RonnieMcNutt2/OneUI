.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$BluetoothPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothPolicy"
.end annotation


# static fields
.field public static final BLE_ALLOWED:Ljava/lang/String; = "isBLEAllowed"

.field public static final BLUETOOTH_ENABLED:Ljava/lang/String; = "isBluetoothEnabled"

.field public static final NAME:Ljava/lang/String; = "BluetoothPolicy"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider/BluetoothPolicy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
