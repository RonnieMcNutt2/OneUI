.class public Lcom/samsung/android/sepunion/ITipsManager$Default;
.super Ljava/lang/Object;
.source "ITipsManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/ITipsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/ITipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method
