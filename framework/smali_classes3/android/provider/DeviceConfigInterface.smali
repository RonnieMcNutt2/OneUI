.class public interface abstract Landroid/provider/DeviceConfigInterface;
.super Ljava/lang/Object;
.source "DeviceConfigInterface.java"


# static fields
.field public static final REAL:Landroid/provider/DeviceConfigInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/provider/DeviceConfigInterface$1;

    invoke-direct {v0}, Landroid/provider/DeviceConfigInterface$1;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    return-void
.end method


# virtual methods
.method public abstract addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
.end method

.method public abstract deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method public varargs abstract getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
.end method

.method public abstract resetToDefaults(ILjava/lang/String;)V
.end method

.method public abstract setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method
