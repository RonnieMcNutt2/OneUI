.class public final synthetic Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->$r8$lambda$IOCcqx-Xzcof1oD1PY887WEfD9c(I)Z

    move-result p1

    return p1
.end method
