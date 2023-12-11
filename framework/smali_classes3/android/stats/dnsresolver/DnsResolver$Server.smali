.class public final Landroid/stats/dnsresolver/DnsResolver$Server;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/dnsresolver/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Server"
.end annotation


# static fields
.field public static final INDEX:J = 0x10500000002L

.field public static final PROTOCOL:J = 0x10e00000001L

.field public static final VALIDATED:J = 0x10800000003L


# instance fields
.field final synthetic this$0:Landroid/stats/dnsresolver/DnsResolver;


# direct methods
.method public constructor <init>(Landroid/stats/dnsresolver/DnsResolver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/stats/dnsresolver/DnsResolver;

    .line 364
    iput-object p1, p0, Landroid/stats/dnsresolver/DnsResolver$Server;->this$0:Landroid/stats/dnsresolver/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
