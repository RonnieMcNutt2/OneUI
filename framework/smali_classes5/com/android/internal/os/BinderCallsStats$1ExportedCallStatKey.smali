.class Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExportedCallStatKey"
.end annotation


# instance fields
.field public binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public screenInteractive:Z

.field final synthetic this$0:Lcom/android/internal/os/BinderCallsStats;

.field public transactionCode:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/os/BinderCallsStats;

    .line 735
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V

    .line 736
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/os/BinderCallsStats;
    .param p2, "transactionCode"    # I
    .param p3, "screenInteractive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;)V"
        }
    .end annotation

    .line 739
    .local p4, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p2, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    .line 741
    iput-boolean p3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    .line 742
    iput-object p4, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 743
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 747
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 748
    return v0

    .line 751
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 752
    return v1

    .line 756
    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    .line 757
    .local v2, "key":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    iget v4, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    iget-boolean v4, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    if-ne v3, v4, :cond_23

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 759
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1f} :catch_25

    if-eqz v3, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    nop

    .line 757
    :goto_24
    return v0

    .line 760
    .end local v2    # "key":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    :catch_25
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type casting errors. Object:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BinderCallsStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 768
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 769
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    add-int/2addr v1, v2

    .line 770
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    if-eqz v2, :cond_14

    const/16 v2, 0x4cf

    goto :goto_16

    :cond_14
    const/16 v2, 0x4d5

    :goto_16
    add-int/2addr v0, v2

    .line 771
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
