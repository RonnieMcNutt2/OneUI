.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;->f$0:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;->f$0:Landroid/util/Pair;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$findAvailableBinaryKey$32(Landroid/util/Pair;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
