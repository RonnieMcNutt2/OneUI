.class public final synthetic Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskFragmentOrganizer$1;

.field public final synthetic f$1:Landroid/window/TaskFragmentTransaction;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentTransaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/TaskFragmentTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/TaskFragmentTransaction;

    invoke-static {v0, v1}, Landroid/window/TaskFragmentOrganizer$1;->$r8$lambda$WFbHAdce5cEMVULSI2e5Ik_xwMc(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentTransaction;)V

    return-void
.end method
