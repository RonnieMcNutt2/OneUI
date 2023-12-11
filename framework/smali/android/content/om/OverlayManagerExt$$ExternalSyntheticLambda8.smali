.class public final synthetic Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda8;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda8;->f$0:I

    check-cast p1, Landroid/content/res/ApkAssets;

    invoke-static {v0, p1}, Landroid/content/om/OverlayManagerExt;->lambda$hasOverlayInfoExts$0(ILandroid/content/res/ApkAssets;)Z

    move-result p1

    return p1
.end method
