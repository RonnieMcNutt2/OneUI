.class public Lcom/samsung/android/sepunion/OneHandServiceManager;
.super Ljava/lang/Object;
.source "OneHandServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/sepunion/IOneHandService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/samsung/android/sepunion/OneHandServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/OneHandServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sepunion/OneHandServiceManager;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private getService()Lcom/samsung/android/sepunion/IOneHandService;
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/samsung/android/sepunion/OneHandServiceManager;->mService:Lcom/samsung/android/sepunion/IOneHandService;

    if-nez v0, :cond_1c

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sepunion/OneHandServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 21
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string/jumbo v1, "onehand"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 22
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/sepunion/IOneHandService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IOneHandService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sepunion/OneHandServiceManager;->mService:Lcom/samsung/android/sepunion/IOneHandService;

    .line 24
    .end local v0    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/sepunion/OneHandServiceManager;->mService:Lcom/samsung/android/sepunion/IOneHandService;

    return-object v0
.end method
