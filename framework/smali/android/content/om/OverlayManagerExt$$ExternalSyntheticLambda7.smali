.class public final synthetic Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/om/OverlayInfoExt;

    invoke-static {v0, p1}, Landroid/content/om/OverlayManagerExt;->lambda$addOverlayPaths$4(Ljava/lang/String;Landroid/content/om/OverlayInfoExt;)Z

    move-result p1

    return p1
.end method
