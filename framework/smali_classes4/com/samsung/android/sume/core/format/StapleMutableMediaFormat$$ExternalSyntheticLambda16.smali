.class public final synthetic Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->lambda$adjustChannels$8$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
