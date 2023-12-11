.class Landroid/widget/Chronometer$RefreshData;
.super Ljava/lang/Object;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/widget/Chronometer$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animate:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 840
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/widget/Chronometer$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Landroid/widget/Chronometer$RefreshData;
    .registers 5
    .param p0, "id"    # I
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 848
    sget-object v0, Landroid/widget/Chronometer$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer$RefreshData;

    .line 849
    .local v0, "rd":Landroid/widget/Chronometer$RefreshData;
    if-nez v0, :cond_10

    .line 850
    new-instance v1, Landroid/widget/Chronometer$RefreshData;

    invoke-direct {v1}, Landroid/widget/Chronometer$RefreshData;-><init>()V

    move-object v0, v1

    .line 852
    :cond_10
    iput p0, v0, Landroid/widget/Chronometer$RefreshData;->id:I

    .line 853
    iput p1, v0, Landroid/widget/Chronometer$RefreshData;->progress:I

    .line 854
    iput-boolean p2, v0, Landroid/widget/Chronometer$RefreshData;->animate:Z

    .line 855
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .line 859
    sget-object v0, Landroid/widget/Chronometer$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 860
    return-void
.end method
