.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda22;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda22;->f$0:Landroid/view/ViewRootImpl;

    check-cast p1, Landroid/view/Display;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->$r8$lambda$c7JZZkOAcHfI6hOciY--L06Au8s(Landroid/view/ViewRootImpl;Landroid/view/Display;)V

    return-void
.end method
