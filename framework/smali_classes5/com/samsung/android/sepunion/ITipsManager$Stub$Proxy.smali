.class Lcom/samsung/android/sepunion/ITipsManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITipsManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/ITipsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/ITipsManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/sepunion/ITipsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sepunion/ITipsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 91
    const-string v0, "com.samsung.android.sepunion.ITipsManager"

    return-object v0
.end method
