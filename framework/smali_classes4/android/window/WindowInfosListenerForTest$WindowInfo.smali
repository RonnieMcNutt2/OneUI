.class public Landroid/window/WindowInfosListenerForTest$WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListenerForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowInfo"
.end annotation


# instance fields
.field public final bounds:Landroid/graphics/Rect;

.field public final displayId:I

.field public final isTrustedOverlay:Z

.field public final isVisible:Z

.field public final name:Ljava/lang/String;

.field public final windowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;I)V
    .registers 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "inputConfig"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    .line 86
    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    .line 87
    iput p3, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    .line 88
    iput-object p4, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    .line 89
    and-int/lit16 v0, p5, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    .line 90
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    iput-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    .line 91
    return-void
.end method
