.class public final synthetic Lcom/samsung/android/sume/core/message/ContentsInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/message/ContentsInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/message/ContentsInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/ContentsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/ContentsInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/ContentsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/ContentsInfo;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->lambda$toString$0$com-samsung-android-sume-core-message-ContentsInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
