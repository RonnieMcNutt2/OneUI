.class public final synthetic Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarManager$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->lambda$setDualDarInfo$1(IILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
