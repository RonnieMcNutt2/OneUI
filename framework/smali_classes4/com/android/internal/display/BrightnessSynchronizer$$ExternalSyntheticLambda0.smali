.class public final synthetic Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/display/BrightnessSynchronizer;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->$r8$lambda$3avwJY3gXV6oS4f_Oi_4W70x9cM(Lcom/android/internal/display/BrightnessSynchronizer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
