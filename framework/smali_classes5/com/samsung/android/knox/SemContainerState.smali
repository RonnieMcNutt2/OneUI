.class public Lcom/samsung/android/knox/SemContainerState;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemContainerState$StateReceiver;,
        Lcom/samsung/android/knox/SemContainerState$StateListener;,
        Lcom/samsung/android/knox/SemContainerState$LockListener;,
        Lcom/samsung/android/knox/SemContainerState$EventListener;
    }
.end annotation


# static fields
.field public static ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

.field private mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

.field private mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

.field private mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-string v0, "SemContainerState"

    sput-object v0, Lcom/samsung/android/knox/SemContainerState;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/SemContainerState;->DEBUG:Z

    .line 28
    const-string v0, "com.samsung.android.knox.ACTION_CONTAINER_STATE_RECEIVER"

    sput-object v0, Lcom/samsung/android/knox/SemContainerState;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;Lcom/samsung/android/knox/SemContainerState$StateListener;Lcom/samsung/android/knox/SemContainerState$LockListener;Lcom/samsung/android/knox/SemContainerState$EventListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateListener"    # Lcom/samsung/android/knox/SemContainerState$StateListener;
    .param p3, "lockListener"    # Lcom/samsung/android/knox/SemContainerState$LockListener;
    .param p4, "eventListener"    # Lcom/samsung/android/knox/SemContainerState$EventListener;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/samsung/android/knox/SemContainerState;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iput-object p3, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    .line 143
    iput-object p2, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    .line 144
    iput-object p4, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    .line 145
    new-instance v1, Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/SemContainerState$StateReceiver;-><init>(Lcom/samsung/android/knox/SemContainerState;Lcom/samsung/android/knox/SemContainerState$StateReceiver-IA;)V

    iput-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    .line 157
    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    .line 158
    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    .line 159
    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    .line 160
    return-void
.end method
