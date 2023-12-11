.class public Lcom/samsung/android/app/SemMultiWindowManager;
.super Ljava/lang/Object;
.source "SemMultiWindowManager.java"


# static fields
.field public static final MODE_FREEFORM:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_PICTURE_IN_PICTURE:I = 0x4

.field public static final MODE_SPLIT_SCREEN:I = 0x2


# instance fields
.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 74
    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v0

    return v0
.end method

.method public getSupportedModes(Landroid/content/pm/ResolveInfo;)I
    .registers 3
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v1, "SEM_API"

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method
