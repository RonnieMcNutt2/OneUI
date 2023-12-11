.class public final Landroid/stats/dnsresolver/DnsResolver$Servers;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/dnsresolver/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Servers"
.end annotation


# static fields
.field public static final SERVER:J = 0x20b00000001L


# instance fields
.field final synthetic this$0:Landroid/stats/dnsresolver/DnsResolver;


# direct methods
.method public constructor <init>(Landroid/stats/dnsresolver/DnsResolver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/stats/dnsresolver/DnsResolver;

    .line 356
    iput-object p1, p0, Landroid/stats/dnsresolver/DnsResolver$Servers;->this$0:Landroid/stats/dnsresolver/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
