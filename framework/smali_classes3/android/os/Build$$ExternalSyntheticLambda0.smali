.class public final synthetic Landroid/os/Build$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/os/Build;->lambda$joinListOrElse$0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
