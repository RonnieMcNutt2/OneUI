.class public Landroid/util/proto/WireTypeMismatchException;
.super Landroid/util/proto/ProtoParseException;
.source "WireTypeMismatchException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
