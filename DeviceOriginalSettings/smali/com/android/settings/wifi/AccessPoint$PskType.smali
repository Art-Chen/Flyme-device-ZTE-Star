.class final enum Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;
.super Ljava/lang/Enum;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

.field public static final enum UNKNOWN:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

.field public static final enum WPA:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

.field public static final enum WPA2:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

.field public static final enum WPA_WPA2:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    .line 97
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->WPA:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    .line 98
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v4}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->WPA2:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    .line 99
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    const-string v1, "WPA_WPA2"

    invoke-direct {v0, v1, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    sget-object v1, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->WPA:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->WPA2:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->$VALUES:[Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    return-object v0
.end method

.method public static values()[Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->$VALUES:[Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    invoke-virtual {v0}, [Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint$PskType;

    return-object v0
.end method
