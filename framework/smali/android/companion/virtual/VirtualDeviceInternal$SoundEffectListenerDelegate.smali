.class Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;
.super Ljava/lang/Object;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundEffectListenerDelegate"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSoundEffectListener:Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;


# direct methods
.method public static synthetic $r8$lambda$RiAdF1wc_6ySYZRbrxBTZqC9G3M(Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->lambda$onPlaySoundEffect$0(I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "soundEffectCallback"    # Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->mSoundEffectListener:Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    .line 451
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 452
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    return-void
.end method

.method private synthetic lambda$onPlaySoundEffect$0(I)V
    .registers 3
    .param p1, "effectType"    # I

    .line 455
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->mSoundEffectListener:Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;->onPlaySoundEffect(I)V

    return-void
.end method


# virtual methods
.method public onPlaySoundEffect(I)V
    .registers 4
    .param p1, "effectType"    # I

    .line 455
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method
