.class public final synthetic Landroid/telecom/Connection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telecom/Connection;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Connection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Connection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, p1}, Landroid/telecom/Connection;->$r8$lambda$M7qW6t6QVMS0cof8H8QWJMWxrH0(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V

    return-void
.end method
