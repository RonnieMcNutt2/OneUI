.class final Landroid/app/ActivityThread$DumpResourcesData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpResourcesData"
.end annotation


# instance fields
.field public fd:Landroid/os/ParcelFileDescriptor;

.field public finishCallback:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
