.class public final synthetic Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda4;
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

    check-cast p1, Landroid/view/Display;

    invoke-static {p1}, Landroid/hardware/display/DisplayManager;->$r8$lambda$kdI9jQcs7sc7HvtbZ2bggib5JDo(Landroid/view/Display;)Z

    move-result p1

    return p1
.end method
