.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$KnoxCustomManagerService;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxCustomManagerService"
.end annotation


# static fields
.field public static final NAME1:Ljava/lang/String; = "KnoxCustomManagerService1"

.field public static final NAME2:Ljava/lang/String; = "KnoxCustomManagerService2"

.field public static final SEALED_STATE:Ljava/lang/String; = "getSealedState"

.field public static final SEALED_USB_MASSSTORAGE_STATE:Ljava/lang/String; = "getSealedUsbMassStorageState"

.field public static final URI1:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService1"

.field public static final URI2:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field public static final USB_CONNECTION_TYPE_INTERNAL:Ljava/lang/String; = "getUsbConnectionTypeInternal"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
