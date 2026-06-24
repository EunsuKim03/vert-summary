; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"internal/task.Task" = type { ptr, ptr, i64, %"sync/atomic.noCopy", %"internal/task.state", i8, i1, i8, ptr }
%"sync/atomic.noCopy" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"sync/atomic.noCopy", i32 }
%runtime._string = type { ptr, i64 }
%runtime.elfHeader = type { i32, i8, i8, i8, i8, i8, [7 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }

@"internal/task.activeTasks" = internal unnamed_addr global ptr @"internal/task.mainTask", align 8, !dbg !0
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !50
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !52
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !58
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !61
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !65
@"internal/task.otherGoroutines" = internal unnamed_addr global i32 0, align 4, !dbg !70
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !72
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !77
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !83
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !85
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !93
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !100
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !106
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !111
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !116
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !121
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !124
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !127
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !129
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !131
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !133
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !135
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = local_unnamed_addr global %runtime._string { ptr @.string, i64 6 }, align 8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define internal fastcc double @math.Ldexp(double %frac, i64 %exp) unnamed_addr #1 !dbg !1735 {
entry:
    #dbg_value(double %frac, !1741, !DIExpression(), !1743)
    #dbg_value(i64 %exp, !1742, !DIExpression(), !1743)
    #dbg_value(double %frac, !1741, !DIExpression(), !1744)
    #dbg_value(i64 %exp, !1742, !DIExpression(), !1745)
    #dbg_value(double %frac, !1746, !DIExpression(), !1754)
    #dbg_value(i64 %exp, !1750, !DIExpression(), !1754)
    #dbg_value(double %frac, !1746, !DIExpression(), !1756)
  %0 = fcmp oeq double %frac, 0.000000e+00, !dbg !1757
  br i1 %0, label %math.ldexp.exit, label %switch.next.i, !dbg !1758

switch.next.i:                                    ; preds = %entry
    #dbg_value(double %frac, !1746, !DIExpression(), !1759)
    #dbg_value(double %frac, !1760, !DIExpression(), !1765)
    #dbg_value(i64 0, !1764, !DIExpression(), !1765)
    #dbg_value(i64 0, !1764, !DIExpression(), !1767)
  %1 = call double @llvm.fabs.f64(double %frac), !dbg !1768
    #dbg_value(double %1, !1760, !DIExpression(), !1769)
  %2 = fcmp ogt double %1, 0x7FEFFFFFFFFFFFFF, !dbg !1770
    #dbg_value(double %frac, !1746, !DIExpression(), !1771)
  %3 = fcmp uno double %frac, 0.000000e+00
  %or.cond.i = or i1 %3, %2, !dbg !1758
  br i1 %or.cond.i, label %math.ldexp.exit, label %switch.next2.i, !dbg !1758

switch.next2.i:                                   ; preds = %switch.next.i
    #dbg_value(double %frac, !1746, !DIExpression(), !1772)
    #dbg_value(double %frac, !1773, !DIExpression(), !1778)
    #dbg_value(double %frac, !1773, !DIExpression(), !1780)
  %4 = fcmp olt double %1, 0x10000000000000, !dbg !1781
  %5 = fmul double %frac, 0x4330000000000000, !dbg !1782
  %.pn3.i.i = select i1 %4, double %5, double %frac, !dbg !1782
  %.pn1.i.i = select i1 %4, i64 -52, i64 0, !dbg !1782
    #dbg_value(double %.pn3.i.i, !1746, !DIExpression(), !1783)
    #dbg_value(i64 %.pn1.i.i, !1751, !DIExpression(), !1784)
    #dbg_value(i64 %.pn1.i.i, !1751, !DIExpression(), !1785)
    #dbg_value(i64 poison, !1750, !DIExpression(), !1786)
    #dbg_value(double %.pn3.i.i, !1746, !DIExpression(), !1787)
    #dbg_value(double %.pn3.i.i, !1788, !DIExpression(), !1792)
  %.cast.i.i = bitcast double %.pn3.i.i to i64, !dbg !1794
    #dbg_value(i64 %.cast.i.i, !1752, !DIExpression(), !1795)
    #dbg_value(i64 %.cast.i.i, !1752, !DIExpression(), !1796)
  %6 = lshr i64 %.cast.i.i, 52, !dbg !1797
  %7 = and i64 %6, 2047, !dbg !1798
  %8 = add i64 %exp, -1023, !dbg !1799
  %9 = add i64 %8, %.pn1.i.i, !dbg !1786
  %10 = add i64 %9, %7, !dbg !1800
    #dbg_value(i64 %10, !1750, !DIExpression(), !1800)
    #dbg_value(i64 %10, !1750, !DIExpression(), !1801)
  %11 = icmp slt i64 %10, -1075, !dbg !1802
  br i1 %11, label %if.then.i, label %if.done.i, !dbg !1758

if.then.i:                                        ; preds = %switch.next2.i
    #dbg_value(double %.pn3.i.i, !1746, !DIExpression(), !1803)
    #dbg_value(double 0.000000e+00, !1804, !DIExpression(), !1811)
    #dbg_value(double %.pn3.i.i, !1810, !DIExpression(), !1811)
    #dbg_value(double 0.000000e+00, !1804, !DIExpression(), !1813)
    #dbg_value(double %.pn3.i.i, !1810, !DIExpression(), !1814)
    #dbg_value(!DIArgList(double poison, double poison), !1815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1820)
  %.cast.i2.i.i = call double @llvm.copysign.f64(double 0.000000e+00, double %.pn3.i.i), !dbg !1822
  br label %math.ldexp.exit, !dbg !1823

if.done.i:                                        ; preds = %switch.next2.i
    #dbg_value(i64 %10, !1750, !DIExpression(), !1824)
  %12 = icmp sgt i64 %10, 1023, !dbg !1825
  br i1 %12, label %if.then3.i, label %if.done6.i, !dbg !1758

if.then3.i:                                       ; preds = %if.done.i
    #dbg_value(double %.pn3.i.i, !1746, !DIExpression(), !1826)
  %13 = fcmp olt double %.pn3.i.i, 0.000000e+00, !dbg !1827
  %..i = select i1 %13, double 0xFFF0000000000000, double 0x7FF0000000000000, !dbg !1758
  br label %math.ldexp.exit, !dbg !1758

if.done6.i:                                       ; preds = %if.done.i
    #dbg_value(double 1.000000e+00, !1753, !DIExpression(), !1828)
    #dbg_value(i64 %10, !1750, !DIExpression(), !1829)
  %14 = icmp slt i64 %10, -1022, !dbg !1830
  %spec.select1.i = select i1 %14, double 0x3CA0000000000000, double 1.000000e+00, !dbg !1758
  %15 = and i64 %.cast.i.i, -9218868437227405313, !dbg !1831
    #dbg_value(i64 %15, !1752, !DIExpression(), !1831)
    #dbg_value(i64 poison, !1750, !DIExpression(), !1832)
  %16 = shl i64 %10, 52, !dbg !1833
  %17 = add i64 %16, 238690780250636288, !dbg !1833
  %18 = select i1 %14, i64 %17, i64 %16, !dbg !1833
  %19 = add i64 %18, 4607182418800017408, !dbg !1833
  %20 = or i64 %19, %15, !dbg !1834
    #dbg_value(i64 %20, !1752, !DIExpression(), !1834)
    #dbg_value(double %spec.select1.i, !1753, !DIExpression(), !1835)
    #dbg_value(i64 %20, !1752, !DIExpression(), !1836)
    #dbg_value(i64 %20, !1815, !DIExpression(), !1837)
  %.cast.i2.i = bitcast i64 %20 to double, !dbg !1839
  %21 = fmul double %spec.select1.i, %.cast.i2.i, !dbg !1840
  br label %math.ldexp.exit, !dbg !1841

math.ldexp.exit:                                  ; preds = %entry, %switch.next.i, %if.then.i, %if.then3.i, %if.done6.i
  %common.ret.op.i = phi double [ %.cast.i2.i.i, %if.then.i ], [ %21, %if.done6.i ], [ %frac, %entry ], [ %frac, %switch.next.i ], [ %..i, %if.then3.i ]
  ret double %common.ret.op.i, !dbg !1842
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define internal fastcc { double, i64 } @math.Frexp(double %f) unnamed_addr #1 !dbg !1843 {
entry:
    #dbg_value(double %f, !1847, !DIExpression(), !1848)
    #dbg_value(double %f, !1847, !DIExpression(), !1849)
    #dbg_value(double %f, !1850, !DIExpression(), !1856)
    #dbg_value(double %f, !1850, !DIExpression(), !1858)
  %0 = fcmp oeq double %f, 0.000000e+00, !dbg !1859
  br i1 %0, label %math.frexp.exit, label %switch.next.i, !dbg !1860

switch.next.i:                                    ; preds = %entry
    #dbg_value(double %f, !1850, !DIExpression(), !1861)
    #dbg_value(double %f, !1760, !DIExpression(), !1862)
    #dbg_value(i64 0, !1764, !DIExpression(), !1862)
    #dbg_value(i64 0, !1764, !DIExpression(), !1864)
  %1 = call double @llvm.fabs.f64(double %f), !dbg !1865
    #dbg_value(double %1, !1760, !DIExpression(), !1866)
  %2 = fcmp ogt double %1, 0x7FEFFFFFFFFFFFFF, !dbg !1867
    #dbg_value(double %f, !1850, !DIExpression(), !1868)
  %3 = fcmp uno double %f, 0.000000e+00
  %or.cond.i = or i1 %3, %2, !dbg !1860
  br i1 %or.cond.i, label %math.frexp.exit, label %switch.next2.i, !dbg !1860

switch.next2.i:                                   ; preds = %switch.next.i
    #dbg_value(double %f, !1850, !DIExpression(), !1869)
    #dbg_value(double %f, !1773, !DIExpression(), !1870)
    #dbg_value(double %f, !1773, !DIExpression(), !1872)
  %4 = fcmp olt double %1, 0x10000000000000, !dbg !1873
  %5 = fmul double %f, 0x4330000000000000, !dbg !1874
  %.pn3.i.i = select i1 %4, double %5, double %f, !dbg !1874
    #dbg_value(double %.pn3.i.i, !1850, !DIExpression(), !1875)
    #dbg_value(i64 poison, !1853, !DIExpression(), !1876)
    #dbg_value(double %.pn3.i.i, !1850, !DIExpression(), !1877)
    #dbg_value(double %.pn3.i.i, !1788, !DIExpression(), !1878)
  %.cast.i.i = bitcast double %.pn3.i.i to i64, !dbg !1880
    #dbg_value(i64 %.cast.i.i, !1854, !DIExpression(), !1881)
    #dbg_value(i64 %.cast.i.i, !1854, !DIExpression(), !1882)
  %6 = lshr i64 %.cast.i.i, 52, !dbg !1883
  %7 = and i64 %6, 2047, !dbg !1884
  %8 = select i1 %4, i64 -1074, i64 -1022, !dbg !1885
  %9 = add nsw i64 %7, %8, !dbg !1886
    #dbg_value(i64 %9, !1853, !DIExpression(), !1886)
  %10 = and i64 %.cast.i.i, -9218868437227405313, !dbg !1887
    #dbg_value(i64 %10, !1854, !DIExpression(), !1887)
  %11 = or disjoint i64 %10, 4602678819172646912, !dbg !1888
    #dbg_value(i64 %11, !1854, !DIExpression(), !1888)
    #dbg_value(i64 %11, !1854, !DIExpression(), !1889)
    #dbg_value(i64 %11, !1815, !DIExpression(), !1890)
  %.cast.i3.i = bitcast i64 %11 to double, !dbg !1892
    #dbg_value(double %.cast.i3.i, !1855, !DIExpression(), !1893)
  br label %math.frexp.exit, !dbg !1894

math.frexp.exit:                                  ; preds = %entry, %switch.next.i, %switch.next2.i
  %f.pn.i = phi double [ %.cast.i3.i, %switch.next2.i ], [ %f, %entry ], [ %f, %switch.next.i ]
  %.pn1.i = phi i64 [ %9, %switch.next2.i ], [ 0, %entry ], [ 0, %switch.next.i ]
  %.pn.i = insertvalue { double, i64 } zeroinitializer, double %f.pn.i, 0, !dbg !1860
  %common.ret.op.i = insertvalue { double, i64 } %.pn.i, i64 %.pn1.i, 1, !dbg !1860
  ret { double, i64 } %common.ret.op.i, !dbg !1895
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable(sync)
define internal fastcc double @math.Pow(double %x, double %y) unnamed_addr #2 !dbg !1896 {
entry:
    #dbg_value(double %x, !1900, !DIExpression(), !1902)
    #dbg_value(double %y, !1901, !DIExpression(), !1902)
    #dbg_value(double %x, !1900, !DIExpression(), !1903)
    #dbg_value(double %y, !1901, !DIExpression(), !1904)
    #dbg_value(double %x, !1905, !DIExpression(), !1916)
    #dbg_value(double %y, !1908, !DIExpression(), !1916)
    #dbg_value(double %y, !1908, !DIExpression(), !1918)
  %0 = fcmp oeq double %y, 0.000000e+00, !dbg !1919
  %1 = fcmp oeq double %x, 1.000000e+00, !dbg !1920
  %2 = select i1 %0, i1 true, i1 %1, !dbg !1920
  br i1 %2, label %math.pow.exit, label %switch.next.i, !dbg !1920

switch.next.i:                                    ; preds = %entry
    #dbg_value(double %y, !1908, !DIExpression(), !1921)
  %3 = fcmp oeq double %y, 1.000000e+00, !dbg !1922
  br i1 %3, label %math.pow.exit, label %switch.next2.i, !dbg !1920

switch.next2.i:                                   ; preds = %switch.next.i
    #dbg_value(double %x, !1905, !DIExpression(), !1923)
    #dbg_value(double %y, !1908, !DIExpression(), !1924)
  %or.cond = fcmp uno double %x, %y, !dbg !1920
  br i1 %or.cond, label %math.pow.exit, label %switch.next5.i, !dbg !1920

switch.next5.i:                                   ; preds = %switch.next2.i
    #dbg_value(double %x, !1905, !DIExpression(), !1925)
  %4 = fcmp oeq double %x, 0.000000e+00, !dbg !1926
  br i1 %4, label %switch.body6.i, label %switch.next34.i, !dbg !1920

switch.body6.i:                                   ; preds = %switch.next5.i
    #dbg_value(double %y, !1908, !DIExpression(), !1927)
  %5 = fcmp olt double %y, 0.000000e+00, !dbg !1928
  br i1 %5, label %switch.body7.i, label %switch.next8.i, !dbg !1920

switch.body7.i:                                   ; preds = %switch.body6.i
    #dbg_value(double %x, !1905, !DIExpression(), !1929)
    #dbg_value(double %x, !1930, !DIExpression(), !1934)
    #dbg_value(double %x, !1930, !DIExpression(), !1936)
    #dbg_value(double %x, !1788, !DIExpression(), !1937)
  %.cast.i.i19 = bitcast double %x to i64, !dbg !1939
  %6 = icmp slt i64 %.cast.i.i19, 0, !dbg !1940
    #dbg_value(double %y, !1908, !DIExpression(), !1941)
    #dbg_value(double %y, !1942, !DIExpression(), !1947)
    #dbg_value(double %y, !1942, !DIExpression(), !1949)
    #dbg_value(double %y, !1950, !DIExpression(), !1954)
    #dbg_value(double %y, !1950, !DIExpression(), !1956)
  %7 = call double @llvm.fabs.f64(double %y)
  %8 = fcmp ult double %7, 0x4340000000000000
  %or.cond22 = and i1 %6, %8, !dbg !1920
  br i1 %or.cond22, label %if.done.i10, label %if.done.i, !dbg !1920

if.done.i10:                                      ; preds = %switch.body7.i
    #dbg_value(double %y, !1942, !DIExpression(), !1957)
    #dbg_value(double %y, !1958, !DIExpression(), !1964)
    #dbg_value(double %y, !1958, !DIExpression(), !1966)
    #dbg_value(double %y, !1967, !DIExpression(), !1971)
  %9 = call double @llvm.trunc.f64(double %y), !dbg !1971
    #dbg_value(double %9, !1962, !DIExpression(), !1973)
    #dbg_value(double %y, !1958, !DIExpression(), !1974)
    #dbg_value(double %9, !1962, !DIExpression(), !1975)
    #dbg_value(double %y, !1958, !DIExpression(), !1976)
    #dbg_value(double poison, !1804, !DIExpression(), !1977)
    #dbg_value(double %y, !1810, !DIExpression(), !1977)
    #dbg_value(double poison, !1804, !DIExpression(), !1979)
    #dbg_value(double %y, !1810, !DIExpression(), !1980)
    #dbg_value(!DIArgList(double poison, double poison), !1815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1981)
    #dbg_value(double poison, !1963, !DIExpression(), !1983)
    #dbg_value(double poison, !1945, !DIExpression(), !1984)
    #dbg_value(double poison, !1946, !DIExpression(), !1985)
    #dbg_value(double poison, !1946, !DIExpression(), !1986)
  %10 = fcmp oeq double %y, %9, !dbg !1987
  br i1 %10, label %binop.rhs.i12, label %if.done.i, !dbg !1988

binop.rhs.i12:                                    ; preds = %if.done.i10
    #dbg_value(double %9, !1945, !DIExpression(), !1984)
    #dbg_value(double %9, !1945, !DIExpression(), !1989)
  %abovemin.i13 = fcmp oge double %9, 0xC3E0000000000000, !dbg !1990
  %belowmax.i14 = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !1990
  %inbounds.i15 = and i1 %abovemin.i13, %belowmax.i14, !dbg !1990
  %remapped.i16 = zext i1 %abovemin.i13 to i64, !dbg !1990
  %normal.i17 = fptosi double %9 to i64, !dbg !1990
  %11 = select i1 %inbounds.i15, i64 %normal.i17, i64 %remapped.i16, !dbg !1990
  %12 = and i64 %11, 1, !dbg !1991
  %.not25 = icmp eq i64 %12, 0, !dbg !1992
  br i1 %.not25, label %if.done.i, label %math.pow.exit, !dbg !1920

if.done.i:                                        ; preds = %if.done.i10, %binop.rhs.i12, %switch.body7.i
    #dbg_value(i64 9218868437227405312, !1815, !DIExpression(), !1993)
  br label %math.pow.exit, !dbg !2002

switch.next8.i:                                   ; preds = %switch.body6.i
    #dbg_value(double %y, !1908, !DIExpression(), !2003)
  %13 = fcmp ogt double %y, 0.000000e+00, !dbg !2004
  br i1 %13, label %switch.body9.i, label %switch.done.i, !dbg !1920

switch.body9.i:                                   ; preds = %switch.next8.i
    #dbg_value(double %x, !1905, !DIExpression(), !2005)
    #dbg_value(double %x, !1930, !DIExpression(), !2006)
    #dbg_value(double %x, !1930, !DIExpression(), !2008)
    #dbg_value(double %x, !1788, !DIExpression(), !2009)
  %.cast.i.i = bitcast double %x to i64, !dbg !2011
  %14 = icmp slt i64 %.cast.i.i, 0, !dbg !2012
    #dbg_value(double %y, !1908, !DIExpression(), !2013)
    #dbg_value(double %y, !1942, !DIExpression(), !2014)
    #dbg_value(double %y, !1942, !DIExpression(), !2016)
    #dbg_value(double %y, !1950, !DIExpression(), !2017)
    #dbg_value(double %y, !1950, !DIExpression(), !2019)
  %15 = fcmp ult double %y, 0x4340000000000000
  %or.cond24 = and i1 %14, %15, !dbg !1920
  br i1 %or.cond24, label %if.done.i2, label %if.done12.i, !dbg !1920

if.done.i2:                                       ; preds = %switch.body9.i
    #dbg_value(double %y, !1942, !DIExpression(), !2020)
    #dbg_value(double %y, !1958, !DIExpression(), !2021)
    #dbg_value(double %y, !1958, !DIExpression(), !2023)
    #dbg_value(double %y, !1967, !DIExpression(), !2024)
  %16 = call double @llvm.trunc.f64(double %y), !dbg !2024
    #dbg_value(double %16, !1962, !DIExpression(), !2026)
    #dbg_value(double %y, !1958, !DIExpression(), !2027)
    #dbg_value(double %16, !1962, !DIExpression(), !2028)
    #dbg_value(double %y, !1958, !DIExpression(), !2029)
    #dbg_value(double poison, !1804, !DIExpression(), !2030)
    #dbg_value(double %y, !1810, !DIExpression(), !2030)
    #dbg_value(double poison, !1804, !DIExpression(), !2032)
    #dbg_value(double %y, !1810, !DIExpression(), !2033)
    #dbg_value(!DIArgList(double poison, double poison), !1815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2034)
    #dbg_value(double poison, !1963, !DIExpression(), !2036)
    #dbg_value(double poison, !1945, !DIExpression(), !2037)
    #dbg_value(double poison, !1946, !DIExpression(), !2038)
    #dbg_value(double poison, !1946, !DIExpression(), !2039)
  %17 = fcmp oeq double %y, %16, !dbg !2040
  br i1 %17, label %binop.rhs.i3, label %if.done12.i, !dbg !2041

binop.rhs.i3:                                     ; preds = %if.done.i2
    #dbg_value(double %16, !1945, !DIExpression(), !2037)
    #dbg_value(double %16, !1945, !DIExpression(), !2042)
  %abovemin.i4 = fcmp oge double %16, 0xC3E0000000000000, !dbg !2043
  %belowmax.i5 = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !2043
  %inbounds.i6 = and i1 %abovemin.i4, %belowmax.i5, !dbg !2043
  %remapped.i7 = zext i1 %abovemin.i4 to i64, !dbg !2043
  %normal.i8 = fptosi double %16 to i64, !dbg !2043
  %18 = select i1 %inbounds.i6, i64 %normal.i8, i64 %remapped.i7, !dbg !2043
  %19 = and i64 %18, 1, !dbg !2044
  %.not = icmp eq i64 %19, 0, !dbg !2045
  br i1 %.not, label %if.done12.i, label %math.pow.exit, !dbg !1920

if.done12.i:                                      ; preds = %if.done.i2, %binop.rhs.i3, %switch.body9.i
  br label %math.pow.exit, !dbg !2046

switch.done.i:                                    ; preds = %switch.next49.i, %switch.next45.i, %switch.next8.i
    #dbg_value(double %y, !1908, !DIExpression(), !2047)
    #dbg_value(double %y, !1950, !DIExpression(), !2048)
    #dbg_value(double %y, !1950, !DIExpression(), !2050)
  %20 = call double @llvm.fabs.f64(double %y), !dbg !2051
    #dbg_value(double %20, !1958, !DIExpression(), !2052)
    #dbg_value(double %20, !1958, !DIExpression(), !2054)
    #dbg_value(double %20, !1967, !DIExpression(), !2055)
  %21 = call double @llvm.trunc.f64(double %20), !dbg !2055
    #dbg_value(double %21, !1962, !DIExpression(), !2057)
    #dbg_value(double %20, !1958, !DIExpression(), !2058)
    #dbg_value(double %21, !1962, !DIExpression(), !2059)
  %22 = fsub double %20, %21, !dbg !2060
    #dbg_value(double %20, !1958, !DIExpression(), !2061)
    #dbg_value(double %22, !1804, !DIExpression(), !2062)
    #dbg_value(double %20, !1810, !DIExpression(), !2062)
    #dbg_value(double %22, !1804, !DIExpression(), !2064)
    #dbg_value(double %20, !1810, !DIExpression(), !2065)
    #dbg_value(!DIArgList(double poison, double poison), !1815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2066)
  %.cast.i2.i.i = call double @llvm.fabs.f64(double %22), !dbg !2068
    #dbg_value(double %.cast.i2.i.i, !1963, !DIExpression(), !2069)
    #dbg_value(double %21, !1909, !DIExpression(), !2070)
    #dbg_value(double %.cast.i2.i.i, !1910, !DIExpression(), !2071)
    #dbg_value(double %.cast.i2.i.i, !1910, !DIExpression(), !2072)
  %23 = fcmp une double %22, 0.000000e+00, !dbg !2073
    #dbg_value(double %x, !1905, !DIExpression(), !2074)
  %24 = fcmp olt double %x, 0.000000e+00
  %or.cond.i = select i1 %23, i1 %24, i1 false, !dbg !1920
  br i1 %or.cond.i, label %math.pow.exit, label %if.done15.i, !dbg !1920

if.done15.i:                                      ; preds = %switch.done.i
    #dbg_value(double %21, !1909, !DIExpression(), !2075)
  %25 = fcmp ult double %21, 0x43E0000000000000, !dbg !2076
  br i1 %25, label %if.done21.i, label %if.then16.i, !dbg !1920

if.then16.i:                                      ; preds = %if.done15.i
    #dbg_value(double %x, !1905, !DIExpression(), !2077)
  %26 = fcmp oeq double %x, -1.000000e+00, !dbg !2078
  br i1 %26, label %math.pow.exit, label %switch.next18.i, !dbg !1920

switch.next18.i:                                  ; preds = %if.then16.i
    #dbg_value(double %x, !1905, !DIExpression(), !2079)
    #dbg_value(double %x, !1950, !DIExpression(), !2080)
    #dbg_value(double %x, !1950, !DIExpression(), !2082)
  %27 = call double @llvm.fabs.f64(double %x), !dbg !2083
  %28 = fcmp olt double %27, 1.000000e+00, !dbg !2084
    #dbg_value(double %y, !1908, !DIExpression(), !2085)
  %29 = fcmp ule double %y, 0.000000e+00, !dbg !2086
  %30 = xor i1 %28, %29, !dbg !2086
  %spec.select = select i1 %30, double 0.000000e+00, double 0x7FF0000000000000, !dbg !1920
  br label %math.pow.exit, !dbg !1920

if.done21.i:                                      ; preds = %if.done15.i
    #dbg_value(double 1.000000e+00, !1911, !DIExpression(), !2087)
    #dbg_value(i64 0, !1912, !DIExpression(), !2088)
    #dbg_value(double %.cast.i2.i.i, !1910, !DIExpression(), !2089)
  br i1 %23, label %if.then22.i, label %if.done25.i, !dbg !1920

if.then22.i:                                      ; preds = %if.done21.i
    #dbg_value(double %.cast.i2.i.i, !1910, !DIExpression(), !2090)
  %31 = fcmp ogt double %.cast.i2.i.i, 5.000000e-01, !dbg !2091
  %32 = fadd double %.cast.i2.i.i, -1.000000e+00, !dbg !1920
  %33 = fadd double %21, 1.000000e+00, !dbg !1920
  %34 = select i1 %31, double %33, double %21, !dbg !1920
  %35 = select i1 %31, double %32, double %.cast.i2.i.i, !dbg !1920
    #dbg_value(double %35, !1910, !DIExpression(), !2092)
    #dbg_value(double %x, !1905, !DIExpression(), !2093)
    #dbg_value(double %x, !2094, !DIExpression(), !2098)
  %36 = call double @llvm.log.f64(double %x), !dbg !2098
  %37 = fmul double %36, %35, !dbg !2100
    #dbg_value(double %37, !2101, !DIExpression(), !2105)
  %38 = call double @llvm.exp.f64(double %37), !dbg !2105
    #dbg_value(double %38, !1911, !DIExpression(), !2107)
  br label %if.done25.i, !dbg !1920

if.done25.i:                                      ; preds = %if.then22.i, %if.done21.i
  %39 = phi double [ %21, %if.done21.i ], [ %34, %if.then22.i ], !dbg !2070
  %40 = phi double [ 1.000000e+00, %if.done21.i ], [ %38, %if.then22.i ], !dbg !2087
    #dbg_value(double %x, !1905, !DIExpression(), !2108)
    #dbg_value(double poison, !1913, !DIExpression(), !2109)
    #dbg_value(i64 poison, !1914, !DIExpression(), !2110)
    #dbg_value(double %39, !1909, !DIExpression(), !2111)
  %abovemin.i = fcmp oge double %39, 0xC3E0000000000000, !dbg !2112
  %belowmax.i = fcmp ole double %39, 0x43DFFFFFFFFFFFFE, !dbg !2112
  %inbounds.i = and i1 %abovemin.i, %belowmax.i, !dbg !2112
  %saturated.i = select i1 %abovemin.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !2112
  %isnan.i = fcmp uno double %39, 0.000000e+00, !dbg !2112
  %remapped.i = select i1 %isnan.i, i64 0, i64 %saturated.i, !dbg !2112
  %normal.i = fptosi double %39 to i64, !dbg !2112
  %41 = select i1 %inbounds.i, i64 %normal.i, i64 %remapped.i, !dbg !2112
    #dbg_value(i64 %41, !1915, !DIExpression(), !2113)
  %.not.i31 = icmp eq i64 %41, 0, !dbg !2114
  br i1 %.not.i31, label %for.done.i, label %for.body.i.preheader, !dbg !1920

for.body.i.preheader:                             ; preds = %if.done25.i
  %42 = call fastcc { double, i64 } @math.Frexp(double %x), !dbg !2115
  %43 = extractvalue { double, i64 } %42, 1, !dbg !2115
    #dbg_value(i64 %43, !1914, !DIExpression(), !2110)
  %44 = extractvalue { double, i64 } %42, 0, !dbg !2115
    #dbg_value(double %44, !1913, !DIExpression(), !2109)
  br label %for.body.i, !dbg !1920

for.body.i:                                       ; preds = %for.body.i.preheader, %if.done27.i
  %45 = phi i64 [ %64, %if.done27.i ], [ %41, %for.body.i.preheader ]
  %46 = phi i64 [ %63, %if.done27.i ], [ %43, %for.body.i.preheader ]
  %47 = phi double [ %61, %if.done27.i ], [ %44, %for.body.i.preheader ]
  %48 = phi i64 [ %56, %if.done27.i ], [ 0, %for.body.i.preheader ]
  %49 = phi double [ %54, %if.done27.i ], [ %40, %for.body.i.preheader ]
    #dbg_value(i64 %45, !1915, !DIExpression(), !2116)
    #dbg_value(i64 %46, !1914, !DIExpression(), !2117)
    #dbg_value(i64 %46, !1914, !DIExpression(), !2118)
  %50 = add i64 %46, -4097, !dbg !1920
  %or.cond10.i = icmp ult i64 %50, -8193, !dbg !1920
  br i1 %or.cond10.i, label %if.then26.i, label %if.done27.i, !dbg !1920

if.then26.i:                                      ; preds = %for.body.i
    #dbg_value(i64 %46, !1914, !DIExpression(), !2119)
  %51 = add i64 %46, %48, !dbg !2120
    #dbg_value(i64 %51, !1912, !DIExpression(), !2120)
  br label %for.done.i, !dbg !1920

if.done27.i:                                      ; preds = %for.body.i
    #dbg_value(i64 %45, !1915, !DIExpression(), !2121)
  %52 = and i64 %45, 1, !dbg !2122
  %.not5.i = icmp eq i64 %52, 0, !dbg !2123
  %53 = fmul double %49, %47, !dbg !1920
  %54 = select i1 %.not5.i, double %49, double %53, !dbg !1920
  %55 = select i1 %.not5.i, i64 0, i64 %46, !dbg !1920
  %56 = add i64 %55, %48, !dbg !1920
    #dbg_value(double %47, !1913, !DIExpression(), !2124)
  %57 = fmul double %47, %47, !dbg !2125
    #dbg_value(double %57, !1913, !DIExpression(), !2125)
  %58 = shl nsw i64 %46, 1, !dbg !2126
    #dbg_value(i64 %58, !1914, !DIExpression(), !2126)
  %59 = fcmp olt double %57, 5.000000e-01, !dbg !2127
  %60 = fadd double %57, %57, !dbg !1920
  %61 = select i1 %59, double %60, double %57, !dbg !1920
  %62 = sext i1 %59 to i64, !dbg !1920
  %63 = add nsw i64 %58, %62, !dbg !1920
  %64 = ashr i64 %45, 1, !dbg !2128
    #dbg_value(i64 %64, !1915, !DIExpression(), !2116)
  %.not.i = icmp ult i64 %45, 2, !dbg !2114
  br i1 %.not.i, label %for.done.i, label %for.body.i, !dbg !1920

for.done.i:                                       ; preds = %if.done27.i, %if.done25.i, %if.then26.i
  %65 = phi double [ %49, %if.then26.i ], [ %40, %if.done25.i ], [ %54, %if.done27.i ]
  %66 = phi i64 [ %51, %if.then26.i ], [ 0, %if.done25.i ], [ %56, %if.done27.i ], !dbg !2088
    #dbg_value(double %y, !1908, !DIExpression(), !2129)
  %67 = fcmp olt double %y, 0.000000e+00, !dbg !2130
  br i1 %67, label %if.then32.i, label %if.done33.i, !dbg !1920

if.then32.i:                                      ; preds = %for.done.i
    #dbg_value(double %65, !1911, !DIExpression(), !2131)
  %68 = fdiv double 1.000000e+00, %65, !dbg !2132
    #dbg_value(double %68, !1911, !DIExpression(), !2133)
    #dbg_value(i64 %66, !1912, !DIExpression(), !2134)
  %69 = sub i64 0, %66, !dbg !2135
    #dbg_value(i64 %69, !1912, !DIExpression(), !2136)
  br label %if.done33.i, !dbg !1920

if.done33.i:                                      ; preds = %if.then32.i, %for.done.i
  %70 = phi double [ %65, %for.done.i ], [ %68, %if.then32.i ], !dbg !2087
  %71 = phi i64 [ %66, %for.done.i ], [ %69, %if.then32.i ], !dbg !2088
    #dbg_value(double %70, !1911, !DIExpression(), !2137)
    #dbg_value(i64 %71, !1912, !DIExpression(), !2138)
  %72 = call fastcc double @math.Ldexp(double %70, i64 %71), !dbg !2139
  br label %math.pow.exit, !dbg !2140

switch.next34.i:                                  ; preds = %switch.next5.i
    #dbg_value(double %y, !1908, !DIExpression(), !2141)
    #dbg_value(double %y, !1760, !DIExpression(), !2142)
    #dbg_value(i64 0, !1764, !DIExpression(), !2142)
    #dbg_value(i64 0, !1764, !DIExpression(), !2144)
  %73 = call double @llvm.fabs.f64(double %y), !dbg !2145
    #dbg_value(double %73, !1760, !DIExpression(), !2146)
  %74 = fcmp ogt double %73, 0x7FEFFFFFFFFFFFFF, !dbg !2147
  br i1 %74, label %switch.body35.i, label %switch.next40.i, !dbg !1920

switch.body35.i:                                  ; preds = %switch.next34.i
    #dbg_value(double %x, !1905, !DIExpression(), !2148)
  %75 = fcmp oeq double %x, -1.000000e+00, !dbg !2149
  br i1 %75, label %math.pow.exit, label %switch.next37.i, !dbg !1920

switch.next37.i:                                  ; preds = %switch.body35.i
    #dbg_value(double %x, !1905, !DIExpression(), !2150)
    #dbg_value(double %x, !1950, !DIExpression(), !2151)
    #dbg_value(double %x, !1950, !DIExpression(), !2153)
  %76 = call double @llvm.fabs.f64(double %x), !dbg !2154
    #dbg_value(double %y, !1908, !DIExpression(), !2155)
    #dbg_value(double %y, !1760, !DIExpression(), !2156)
    #dbg_value(i64 1, !1764, !DIExpression(), !2156)
    #dbg_value(i64 1, !1764, !DIExpression(), !2158)
    #dbg_value(double %y, !1760, !DIExpression(), !2159)
  %77 = fcmp ogt double %y, 0x7FEFFFFFFFFFFFFF, !dbg !2160
  %78 = fcmp uge double %76, 1.000000e+00, !dbg !2161
  %79 = xor i1 %78, %77, !dbg !2161
  %spec.select20 = select i1 %79, double 0.000000e+00, double 0x7FF0000000000000, !dbg !1920
  br label %math.pow.exit, !dbg !1920

switch.next40.i:                                  ; preds = %switch.next34.i
    #dbg_value(double %x, !1905, !DIExpression(), !2162)
    #dbg_value(double %x, !1760, !DIExpression(), !2163)
    #dbg_value(i64 0, !1764, !DIExpression(), !2163)
    #dbg_value(i64 0, !1764, !DIExpression(), !2165)
  %80 = call double @llvm.fabs.f64(double %x), !dbg !2166
    #dbg_value(double %80, !1760, !DIExpression(), !2167)
  %81 = fcmp ogt double %80, 0x7FEFFFFFFFFFFFFF, !dbg !2168
  br i1 %81, label %switch.body41.i, label %switch.next47.i, !dbg !1920

switch.body41.i:                                  ; preds = %switch.next40.i
    #dbg_value(double %x, !1905, !DIExpression(), !2169)
    #dbg_value(double %x, !1760, !DIExpression(), !2170)
    #dbg_value(i64 -1, !1764, !DIExpression(), !2170)
    #dbg_value(i64 -1, !1764, !DIExpression(), !2172)
    #dbg_value(double poison, !1760, !DIExpression(), !2173)
  %82 = fcmp olt double %x, 0xFFEFFFFFFFFFFFFF, !dbg !2174
  br i1 %82, label %if.then42.i, label %if.done43.i, !dbg !1920

if.then42.i:                                      ; preds = %switch.body41.i
    #dbg_value(double %x, !1905, !DIExpression(), !2175)
  %83 = fdiv double 1.000000e+00, %x, !dbg !2176
    #dbg_value(double %y, !1908, !DIExpression(), !2177)
  %84 = fneg double %y, !dbg !2178
  %85 = call fastcc double @math.Pow(double %83, double %84), !dbg !2179
  br label %math.pow.exit, !dbg !2180

if.done43.i:                                      ; preds = %switch.body41.i
    #dbg_value(double %y, !1908, !DIExpression(), !2181)
  %86 = fcmp olt double %y, 0.000000e+00, !dbg !2182
  br i1 %86, label %math.pow.exit, label %switch.next45.i, !dbg !1920

switch.next45.i:                                  ; preds = %if.done43.i
    #dbg_value(double %y, !1908, !DIExpression(), !2183)
  %87 = fcmp ogt double %y, 0.000000e+00, !dbg !2184
  br i1 %87, label %math.pow.exit, label %switch.done.i, !dbg !1920

switch.next47.i:                                  ; preds = %switch.next40.i
    #dbg_value(double %y, !1908, !DIExpression(), !2185)
  %88 = fcmp oeq double %y, 5.000000e-01, !dbg !2186
  br i1 %88, label %switch.body48.i, label %switch.next49.i, !dbg !1920

switch.body48.i:                                  ; preds = %switch.next47.i
    #dbg_value(double %x, !1905, !DIExpression(), !2187)
    #dbg_value(double %x, !2188, !DIExpression(), !2192)
  %89 = call double @llvm.sqrt.f64(double %x), !dbg !2192
  br label %math.pow.exit, !dbg !2194

switch.next49.i:                                  ; preds = %switch.next47.i
    #dbg_value(double %y, !1908, !DIExpression(), !2195)
  %90 = fcmp oeq double %y, -5.000000e-01, !dbg !2196
  br i1 %90, label %switch.body50.i, label %switch.done.i, !dbg !1920

switch.body50.i:                                  ; preds = %switch.next49.i
    #dbg_value(double %x, !1905, !DIExpression(), !2197)
    #dbg_value(double %x, !2188, !DIExpression(), !2198)
  %91 = call double @llvm.sqrt.f64(double %x), !dbg !2198
  %92 = fdiv double 1.000000e+00, %91, !dbg !2200
  br label %math.pow.exit, !dbg !2201

math.pow.exit:                                    ; preds = %switch.next37.i, %switch.next18.i, %switch.next45.i, %switch.done.i, %binop.rhs.i12, %switch.next2.i, %entry, %switch.next.i, %if.done.i, %binop.rhs.i3, %if.done12.i, %if.then16.i, %if.done33.i, %switch.body35.i, %if.then42.i, %if.done43.i, %switch.body48.i, %switch.body50.i
  %common.ret.op.i = phi double [ 0x7FF0000000000000, %if.done.i ], [ 0.000000e+00, %if.done12.i ], [ %72, %if.done33.i ], [ %85, %if.then42.i ], [ %89, %switch.body48.i ], [ %92, %switch.body50.i ], [ 1.000000e+00, %entry ], [ %x, %switch.next.i ], [ %x, %binop.rhs.i3 ], [ 1.000000e+00, %if.then16.i ], [ 1.000000e+00, %switch.body35.i ], [ 0.000000e+00, %if.done43.i ], [ 0x7FF8000000000001, %switch.next2.i ], [ 0xFFF0000000000000, %binop.rhs.i12 ], [ 0x7FF8000000000001, %switch.done.i ], [ %spec.select, %switch.next18.i ], [ %spec.select20, %switch.next37.i ], [ 0x7FF0000000000000, %switch.next45.i ]
  ret double %common.ret.op.i, !dbg !2202
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #3

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #3

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #4 !dbg !2203 {
entry:
    #dbg_value(ptr %m, !2208, !DIExpression(), !2210)
    #dbg_value(ptr %m, !2208, !DIExpression(), !2211)
  %0 = icmp eq ptr %m, null, !dbg !2212
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !2212

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !2213, !DIExpression(), !2221)
    #dbg_value(i32 0, !2220, !DIExpression(), !2221)
    #dbg_value(ptr %m, !2213, !DIExpression(), !2223)
    #dbg_value(i32 0, !2220, !DIExpression(), !2224)
    #dbg_value(ptr %m, !2225, !DIExpression(), !2233)
    #dbg_value(i32 0, !2232, !DIExpression(), !2233)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2233
    #dbg_value(i32 %1, !2209, !DIExpression(), !2235)
    #dbg_value(i32 %1, !2209, !DIExpression(), !2236)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !2237

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  call fastcc void @runtime._panic(), !dbg !2238
  unreachable, !dbg !2238

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !2208, !DIExpression(), !2239)
    #dbg_value(ptr %m, !2240, !DIExpression(), !2247)
    #dbg_value(ptr %m, !2240, !DIExpression(), !2249)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #16, !dbg !2250
  br label %if.done, !dbg !2237

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !2251

gep.throw:                                        ; preds = %entry
  call fastcc void @runtime.nilPanic(), !dbg !2212
  unreachable, !dbg !2212
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #3

declare ptr @tinygo_task_current() local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #4 !dbg !2252 {
entry:
    #dbg_value(ptr %t, !2256, !DIExpression(), !2261)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2266)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2268)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2269, !DIExpression(), !2276)
    #dbg_value(i32 0, !2274, !DIExpression(), !2276)
    #dbg_value(i32 1, !2275, !DIExpression(), !2276)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2269, !DIExpression(), !2278)
    #dbg_value(i32 0, !2274, !DIExpression(), !2279)
    #dbg_value(i32 1, !2275, !DIExpression(), !2280)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2281, !DIExpression(), !2288)
    #dbg_value(i32 0, !2286, !DIExpression(), !2288)
    #dbg_value(i32 1, !2287, !DIExpression(), !2288)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2288
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !2288
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %for.loop.preheader.i, !dbg !2290

for.loop.preheader.i:                             ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2291)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2292)
    #dbg_value(i32 2, !2220, !DIExpression(), !2292)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2294)
    #dbg_value(i32 2, !2220, !DIExpression(), !2295)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2225, !DIExpression(), !2296)
    #dbg_value(i32 2, !2232, !DIExpression(), !2296)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2296
  %.not4.i = icmp eq i32 %2, 0, !dbg !2298
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !2290

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %for.loop.preheader.i, %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2299)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2300, !DIExpression(), !2306)
    #dbg_value(i32 2, !2305, !DIExpression(), !2308)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #16, !dbg !2309
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2294)
    #dbg_value(i32 2, !2220, !DIExpression(), !2295)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2225, !DIExpression(), !2296)
    #dbg_value(i32 2, !2232, !DIExpression(), !2296)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2296
  %.not.i = icmp eq i32 %3, 0, !dbg !2298
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !2290

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %for.loop.preheader.i
    #dbg_value(i1 false, !2257, !DIExpression(), !2310)
    #dbg_value(ptr @"internal/task.activeTasks", !2258, !DIExpression(), !2311)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2312
  %.not.not6 = icmp eq ptr %4, null, !dbg !2313
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !2314

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !2315
    #dbg_value(ptr %5, !2258, !DIExpression(), !2316)
    #dbg_value(ptr %5, !2258, !DIExpression(), !2317)
  %6 = load ptr, ptr %5, align 8, !dbg !2312
  %.not.not = icmp eq ptr %6, null, !dbg !2313
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !2314

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !2258, !DIExpression(), !2317)
    #dbg_value(ptr %8, !2258, !DIExpression(), !2318)
    #dbg_value(ptr %t, !2256, !DIExpression(), !2319)
  %9 = icmp eq ptr %7, %t, !dbg !2320
    #dbg_value(ptr %8, !2258, !DIExpression(), !2321)
    #dbg_value(ptr %7, !2258, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2316)
  br i1 %9, label %store.next, label %for.loop, !dbg !2314

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !2258, !DIExpression(), !2322)
    #dbg_value(ptr %t, !2256, !DIExpression(), !2323)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !2324
  %11 = load ptr, ptr %10, align 8, !dbg !2324
  store ptr %11, ptr %8, align 8, !dbg !2325
    #dbg_value(i1 true, !2257, !DIExpression(), !2326)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2327
  %13 = add i32 %12, -1, !dbg !2327
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !2327
    #dbg_value(i32 %13, !2260, !DIExpression(), !2327)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2208, !DIExpression(), !2328)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2208, !DIExpression(), !2330)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2331)
    #dbg_value(i32 0, !2220, !DIExpression(), !2331)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2333)
    #dbg_value(i32 0, !2220, !DIExpression(), !2334)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2225, !DIExpression(), !2335)
    #dbg_value(i32 0, !2232, !DIExpression(), !2335)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2335
    #dbg_value(i32 %14, !2209, !DIExpression(), !2337)
    #dbg_value(i32 %14, !2209, !DIExpression(), !2338)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !2339

if.then.i:                                        ; preds = %store.next
  call fastcc void @runtime._panic(), !dbg !2340
  unreachable, !dbg !2340

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !2208, !DIExpression(), !2341)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2240, !DIExpression(), !2342)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2240, !DIExpression(), !2344)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #16, !dbg !2345
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !2339

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !2257, !DIExpression(), !2346)
  ret void, !dbg !2347

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2327
  %16 = add i32 %15, -1, !dbg !2327
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !2327
    #dbg_value(i32 %13, !2260, !DIExpression(), !2327)
  call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !2348
    #dbg_value(i1 poison, !2257, !DIExpression(), !2346)
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !2349
  unreachable, !dbg !2314
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #3

declare void @tinygo_scanCurrentStack() local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #4 !dbg !2350 {
entry:
    #dbg_value(i32 %sig, !2354, !DIExpression(), !2356)
  %0 = call ptr @tinygo_task_current() #16, !dbg !2357
    #dbg_value(ptr %0, !2361, !DIExpression(), !2363)
    #dbg_value(ptr %0, !2361, !DIExpression(), !2364)
  %1 = icmp eq ptr %0, null, !dbg !2365
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2366

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2367
  unreachable, !dbg !2366

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2361, !DIExpression(), !2368)
  %2 = call ptr @llvm.stacksave.p0(), !dbg !2369
  %3 = ptrtoint ptr %2 to i64, !dbg !2372
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2373
  store i64 %3, ptr %4, align 8, !dbg !2373
    #dbg_value(i64 %3, !2355, !DIExpression(), !2373)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2374, !DIExpression(), !2380)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2374, !DIExpression(), !2382)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2383, !DIExpression(), !2387)
    #dbg_value(i32 -1, !2386, !DIExpression(), !2387)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2383, !DIExpression(), !2389)
    #dbg_value(i32 -1, !2386, !DIExpression(), !2390)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2391, !DIExpression(), !2395)
    #dbg_value(i32 -1, !2394, !DIExpression(), !2395)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2395
  %6 = icmp eq i32 %5, 1, !dbg !2397
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !2398

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2374, !DIExpression(), !2399)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2400, !DIExpression(), !2403)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2400, !DIExpression(), !2405)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #16, !dbg !2406
  br label %"(*internal/task.waitGroup).done.exit", !dbg !2398

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !2407, !DIExpression(), !2412)
    #dbg_value(ptr @"internal/task.gcState", !2407, !DIExpression(), !2414)
    #dbg_value(ptr @"internal/task.gcState", !2415, !DIExpression(), !2420)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2420
  %8 = icmp eq i32 %7, 1, !dbg !2422
  br i1 %8, label %for.body, label %for.done, !dbg !2423

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !2300, !DIExpression(), !2424)
    #dbg_value(i32 1, !2305, !DIExpression(), !2426)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #16, !dbg !2427
    #dbg_value(ptr @"internal/task.gcState", !2407, !DIExpression(), !2414)
    #dbg_value(ptr @"internal/task.gcState", !2415, !DIExpression(), !2420)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2420
  %10 = icmp eq i32 %9, 1, !dbg !2422
  br i1 %10, label %for.body, label %for.done, !dbg !2423

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2374, !DIExpression(), !2428)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2374, !DIExpression(), !2430)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2383, !DIExpression(), !2431)
    #dbg_value(i32 -1, !2386, !DIExpression(), !2431)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2383, !DIExpression(), !2433)
    #dbg_value(i32 -1, !2386, !DIExpression(), !2434)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2391, !DIExpression(), !2435)
    #dbg_value(i32 -1, !2394, !DIExpression(), !2435)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2435
  %12 = icmp eq i32 %11, 1, !dbg !2437
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !2438

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2374, !DIExpression(), !2439)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2400, !DIExpression(), !2440)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2400, !DIExpression(), !2442)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #16, !dbg !2443
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !2438

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !2444
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #5 !dbg !2445 {
entry:
    #dbg_value(ptr %msg.data, !2449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2450)
    #dbg_value(i64 %msg.len, !2449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2450)
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2451
    #dbg_value(%runtime._string poison, !2449, !DIExpression(), !2452)
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !2453
  unreachable, !dbg !2454
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #5 !dbg !2455 {
entry:
    #dbg_value(ptr %addr, !2459, !DIExpression(), !2461)
    #dbg_value(ptr %msg.data, !2460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2461)
    #dbg_value(i64 %msg.len, !2460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2461)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !2462
    #dbg_value(ptr %addr, !2459, !DIExpression(), !2463)
  %0 = ptrtoint ptr %addr to i64, !dbg !2464
  %1 = add i64 %0, -5, !dbg !2465
  call fastcc void @runtime.printptr(i64 %1), !dbg !2466
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !2467
    #dbg_value(%runtime._string poison, !2460, !DIExpression(), !2468)
  call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2469
  call fastcc void @runtime.printnl(), !dbg !2470
  call void @abort() #16, !dbg !2471
  unreachable, !dbg !2472
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #7 !dbg !2473 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2477
    #dbg_value(ptr %s.data, !2475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2484)
    #dbg_value(i64 %s.len, !2475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2484)
    #dbg_value(i64 0, !2476, !DIExpression(), !2485)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !2486)
  br label %for.body, !dbg !2487

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2476, !DIExpression(), !2488)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !2489)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2490
  %2 = load i8, ptr %1, align 1, !dbg !2490
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2491
    #dbg_value(i8 %2, !2482, !DIExpression(), !2491)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2491
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #16, !dbg !2492
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2493
  %4 = add nuw nsw i64 %0, 1, !dbg !2494
    #dbg_value(i64 %4, !2476, !DIExpression(), !2495)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2496
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2487

for.done:                                         ; preds = %for.body
  ret void, !dbg !2497
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #7 !dbg !2498 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2505
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2507
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2509
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2511
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2513
    #dbg_value(i64 %ptr, !2502, !DIExpression(), !2516)
    #dbg_value(i64 %ptr, !2502, !DIExpression(), !2517)
  %0 = icmp eq i64 %ptr, 0, !dbg !2518
  br i1 %0, label %for.body.i, label %if.done, !dbg !2519

common.ret:                                       ; preds = %if.done2, %for.body.i
  ret void, !dbg !2519

for.body.i:                                       ; preds = %entry
    #dbg_value(i64 0, !2476, !DIExpression(), !2520)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !2521)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2522
    #dbg_value(i8 110, !2482, !DIExpression(), !2522)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2522
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2524
    #dbg_value(i64 1, !2476, !DIExpression(), !2525)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2522
    #dbg_value(i8 105, !2482, !DIExpression(), !2522)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2522
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2524
    #dbg_value(i64 2, !2476, !DIExpression(), !2525)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2522
    #dbg_value(i8 108, !2482, !DIExpression(), !2522)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2522
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2524
    #dbg_value(i64 3, !2476, !DIExpression(), !2525)
  br label %common.ret, !dbg !2519

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2526
    #dbg_value(i8 48, !2482, !DIExpression(), !2527)
    #dbg_value(i8 48, !2482, !DIExpression(), !2526)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2526
    #dbg_value(i8 48, !2482, !DIExpression(), !2526)
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #16, !dbg !2528
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2529
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2530
    #dbg_value(i8 120, !2482, !DIExpression(), !2531)
    #dbg_value(i8 120, !2482, !DIExpression(), !2530)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2530
    #dbg_value(i8 120, !2482, !DIExpression(), !2530)
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #16, !dbg !2532
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2533
    #dbg_value(i64 0, !2503, !DIExpression(), !2534)
  br label %for.body, !dbg !2519

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2503, !DIExpression(), !2535)
    #dbg_value(i64 %7, !2502, !DIExpression(), !2536)
  %8 = lshr i64 %7, 60, !dbg !2537
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2538
    #dbg_value(i8 %9, !2504, !DIExpression(), !2539)
    #dbg_value(i8 %9, !2504, !DIExpression(), !2540)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2541
  br i1 %10, label %if.then1, label %if.else, !dbg !2519

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2504, !DIExpression(), !2542)
  %11 = or disjoint i8 %9, 48, !dbg !2543
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2544
    #dbg_value(i8 %11, !2482, !DIExpression(), !2545)
    #dbg_value(i8 %11, !2482, !DIExpression(), !2544)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2544
    #dbg_value(i8 %11, !2482, !DIExpression(), !2544)
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #16, !dbg !2546
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2547
  br label %if.done2, !dbg !2519

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2548
    #dbg_value(i64 %13, !2502, !DIExpression(), !2548)
  %14 = add nuw nsw i64 %6, 1, !dbg !2549
    #dbg_value(i64 %14, !2503, !DIExpression(), !2535)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2550
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2519

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2504, !DIExpression(), !2551)
  %15 = add nuw nsw i8 %9, 87, !dbg !2552
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2553
    #dbg_value(i8 %15, !2482, !DIExpression(), !2554)
    #dbg_value(i8 %15, !2482, !DIExpression(), !2553)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2553
    #dbg_value(i8 %15, !2482, !DIExpression(), !2553)
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #16, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2556
  br label %if.done2, !dbg !2519
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #7 !dbg !2557 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2559
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2561
    #dbg_value(i8 10, !2482, !DIExpression(), !2562)
    #dbg_value(i8 10, !2482, !DIExpression(), !2561)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2561
    #dbg_value(i8 10, !2482, !DIExpression(), !2561)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #16, !dbg !2563
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2564
  ret void, !dbg !2565
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #10

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #5 !dbg !2566 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2567
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2568
  unreachable, !dbg !2569
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #11 !dbg !2570 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2591)
    #dbg_value(ptr @"internal/task$pack", !2575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2591)
    #dbg_value(i8 1, !2576, !DIExpression(), !2591)
  %0 = call ptr @tinygo_task_current() #16, !dbg !2592
    #dbg_value(ptr %0, !2361, !DIExpression(), !2594)
    #dbg_value(ptr %0, !2361, !DIExpression(), !2595)
  %1 = icmp eq ptr %0, null, !dbg !2596
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2597

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2598
  unreachable, !dbg !2597

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2361, !DIExpression(), !2599)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2600
  %3 = load ptr, ptr %2, align 8, !dbg !2600
    #dbg_value(ptr %3, !2577, !DIExpression(), !2601)
    #dbg_value(ptr %3, !2577, !DIExpression(), !2602)
  %.not = icmp eq ptr %3, null, !dbg !2603
  br i1 %.not, label %if.done5, label %store.next, !dbg !2604

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2577, !DIExpression(), !2605)
    #dbg_value({ ptr, ptr } poison, !2575, !DIExpression(), !2606)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2607
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2607
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2607
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2607
    #dbg_value({ ptr, ptr } poison, !2589, !DIExpression(), !2607)
    #dbg_value(ptr %3, !2577, !DIExpression(), !2608)
    #dbg_value(i8 1, !2576, !DIExpression(), !2609)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2610
  store i8 1, ptr %5, align 1, !dbg !2610
    #dbg_value(i8 1, !2590, !DIExpression(), !2610)
    #dbg_value(ptr %3, !2577, !DIExpression(), !2611)
  call void @tinygo_longjmp(ptr nonnull %3) #16, !dbg !2612
  br label %if.done5, !dbg !2604

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2576, !DIExpression(), !2613)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2614
    #dbg_value({ ptr, ptr } poison, !2575, !DIExpression(), !2615)
  call fastcc void @runtime.printitf(), !dbg !2616
  call fastcc void @runtime.printnl(), !dbg !2617
  call void @abort() #16, !dbg !2618
  unreachable, !dbg !2619
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #7 !dbg !2620 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2651
    #dbg_value(ptr @"reflect/types.type:basic:string", !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2654)
    #dbg_value(ptr @"internal/task$pack", !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2654)
    #dbg_value({ ptr, ptr } poison, !2624, !DIExpression(), !2655)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2646, !DIExpression(), !2656)
    #dbg_value(ptr @"internal/task$string", !2475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2657)
    #dbg_value(i64 30, !2475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2657)
    #dbg_value(i64 0, !2476, !DIExpression(), !2658)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !2659)
  br label %for.body.i, !dbg !2660

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2476, !DIExpression(), !2661)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !2662)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2663
  %2 = load i8, ptr %1, align 1, !dbg !2663
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2664
    #dbg_value(i8 %2, !2482, !DIExpression(), !2664)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2664
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2665
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2666
  %4 = add nuw nsw i64 %0, 1, !dbg !2667
    #dbg_value(i64 %4, !2476, !DIExpression(), !2668)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2669
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2660

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2670
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #11 !dbg !2671 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2674)
    #dbg_value(ptr @"internal/task$pack", !2673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2674)
    #dbg_value({ ptr, ptr } poison, !2673, !DIExpression(), !2675)
  call fastcc void @runtime.panicOrGoexit(), !dbg !2676
  unreachable, !dbg !2677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #1 !dbg !2678 {
entry:
    #dbg_value(double %x, !2680, !DIExpression(), !2682)
    #dbg_value(double %y, !2681, !DIExpression(), !2682)
    #dbg_value(double %x, !2680, !DIExpression(), !2683)
    #dbg_value(double %y, !2681, !DIExpression(), !2684)
    #dbg_value(double %x, !2685, !DIExpression(), !2689)
    #dbg_value(double %y, !2688, !DIExpression(), !2689)
    #dbg_value(double %x, !2685, !DIExpression(), !2691)
    #dbg_value(double %y, !2688, !DIExpression(), !2692)
    #dbg_value(double %x, !2693, !DIExpression(), !2703)
    #dbg_value(double %y, !2698, !DIExpression(), !2703)
    #dbg_value(i64 9218868437227405313, !2699, !DIExpression(), !2703)
    #dbg_value(i64 9223372036854775807, !2700, !DIExpression(), !2703)
  %.cast.i.i = bitcast double %x to i64, !dbg !2705
    #dbg_value(i64 %.cast.i.i, !2701, !DIExpression(), !2706)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2707
    #dbg_value(i64 %.cast2.i.i, !2702, !DIExpression(), !2708)
    #dbg_value(i64 %.cast.i.i, !2701, !DIExpression(), !2709)
    #dbg_value(i64 9218868437227405313, !2699, !DIExpression(), !2710)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2711
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2712

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2702, !DIExpression(), !2713)
    #dbg_value(i64 9218868437227405313, !2699, !DIExpression(), !2714)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2715
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2712

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2701, !DIExpression(), !2716)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2717
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2712
    #dbg_value(i64 %.cast2.i.i, !2702, !DIExpression(), !2718)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2719
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2712
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2712
    #dbg_value(i64 %spec.select.i.i, !2701, !DIExpression(), !2720)
    #dbg_value(i64 %6, !2702, !DIExpression(), !2721)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2722
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2712
  br label %runtime.minimumFloat64.exit, !dbg !2712

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2723
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #1 !dbg !2724 {
entry:
    #dbg_value(float %x, !2728, !DIExpression(), !2730)
    #dbg_value(float %y, !2729, !DIExpression(), !2730)
    #dbg_value(float %x, !2728, !DIExpression(), !2731)
    #dbg_value(float %y, !2729, !DIExpression(), !2732)
    #dbg_value(float %x, !2733, !DIExpression(), !2737)
    #dbg_value(float %y, !2736, !DIExpression(), !2737)
    #dbg_value(float %x, !2733, !DIExpression(), !2739)
    #dbg_value(float %y, !2736, !DIExpression(), !2740)
    #dbg_value(float %x, !2741, !DIExpression(), !2751)
    #dbg_value(float %y, !2746, !DIExpression(), !2751)
    #dbg_value(i32 2139095041, !2747, !DIExpression(), !2751)
    #dbg_value(i32 2147483647, !2748, !DIExpression(), !2751)
  %.cast.i.i = bitcast float %x to i32, !dbg !2753
    #dbg_value(i32 %.cast.i.i, !2749, !DIExpression(), !2754)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2755
    #dbg_value(i32 %.cast2.i.i, !2750, !DIExpression(), !2756)
    #dbg_value(i32 %.cast.i.i, !2749, !DIExpression(), !2757)
    #dbg_value(i32 2139095041, !2747, !DIExpression(), !2758)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2759
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2760

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2750, !DIExpression(), !2761)
    #dbg_value(i32 2139095041, !2747, !DIExpression(), !2762)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2763
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2760

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2749, !DIExpression(), !2764)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2765
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2760
    #dbg_value(i32 %.cast2.i.i, !2750, !DIExpression(), !2766)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2767
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2760
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2760
    #dbg_value(i32 %spec.select.i.i, !2749, !DIExpression(), !2768)
    #dbg_value(i32 %6, !2750, !DIExpression(), !2769)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2770
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2760
  br label %runtime.minimumFloat32.exit, !dbg !2760

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2771
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #1 !dbg !2772 {
entry:
    #dbg_value(double %x, !2774, !DIExpression(), !2776)
    #dbg_value(double %y, !2775, !DIExpression(), !2776)
    #dbg_value(double %x, !2774, !DIExpression(), !2777)
    #dbg_value(double %y, !2775, !DIExpression(), !2778)
    #dbg_value(double %x, !2779, !DIExpression(), !2783)
    #dbg_value(double %y, !2782, !DIExpression(), !2783)
    #dbg_value(double %x, !2779, !DIExpression(), !2785)
    #dbg_value(double %y, !2782, !DIExpression(), !2786)
    #dbg_value(double %x, !2787, !DIExpression(), !2796)
    #dbg_value(double %y, !2790, !DIExpression(), !2796)
    #dbg_value(i64 9218868437227405313, !2791, !DIExpression(), !2796)
    #dbg_value(i64 9223372036854775807, !2792, !DIExpression(), !2796)
  %.cast.i.i = bitcast double %x to i64, !dbg !2798
    #dbg_value(i64 %.cast.i.i, !2793, !DIExpression(), !2799)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2800
    #dbg_value(i64 %.cast6.i.i, !2794, !DIExpression(), !2801)
    #dbg_value(i64 %.cast.i.i, !2793, !DIExpression(), !2802)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2803
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2804
    #dbg_value(i64 %.cast6.i.i, !2794, !DIExpression(), !2805)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2806
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2804
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2804
    #dbg_value(i64 9218868437227405313, !2791, !DIExpression(), !2807)
    #dbg_value(i64 -9218868437227405314, !2795, !DIExpression(), !2808)
    #dbg_value(i64 %spec.select.i.i, !2793, !DIExpression(), !2809)
    #dbg_value(i64 -9218868437227405314, !2795, !DIExpression(), !2810)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2811
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2804

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2794, !DIExpression(), !2812)
    #dbg_value(i64 -9218868437227405314, !2795, !DIExpression(), !2813)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2814
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2804

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2793, !DIExpression(), !2815)
    #dbg_value(i64 %4, !2794, !DIExpression(), !2816)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2817
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2804
  br label %runtime.maximumFloat64.exit, !dbg !2804

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2818
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #1 !dbg !2819 {
entry:
    #dbg_value(float %x, !2821, !DIExpression(), !2823)
    #dbg_value(float %y, !2822, !DIExpression(), !2823)
    #dbg_value(float %x, !2821, !DIExpression(), !2824)
    #dbg_value(float %y, !2822, !DIExpression(), !2825)
    #dbg_value(float %x, !2826, !DIExpression(), !2830)
    #dbg_value(float %y, !2829, !DIExpression(), !2830)
    #dbg_value(float %x, !2826, !DIExpression(), !2832)
    #dbg_value(float %y, !2829, !DIExpression(), !2833)
    #dbg_value(float %x, !2834, !DIExpression(), !2843)
    #dbg_value(float %y, !2837, !DIExpression(), !2843)
    #dbg_value(i32 2139095041, !2838, !DIExpression(), !2843)
    #dbg_value(i32 2147483647, !2839, !DIExpression(), !2843)
  %.cast.i.i = bitcast float %x to i32, !dbg !2845
    #dbg_value(i32 %.cast.i.i, !2840, !DIExpression(), !2846)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2847
    #dbg_value(i32 %.cast6.i.i, !2841, !DIExpression(), !2848)
    #dbg_value(i32 %.cast.i.i, !2840, !DIExpression(), !2849)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2850
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2851
    #dbg_value(i32 %.cast6.i.i, !2841, !DIExpression(), !2852)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2853
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2851
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2851
    #dbg_value(i32 2139095041, !2838, !DIExpression(), !2854)
    #dbg_value(i32 -2139095042, !2842, !DIExpression(), !2855)
    #dbg_value(i32 %spec.select.i.i, !2840, !DIExpression(), !2856)
    #dbg_value(i32 -2139095042, !2842, !DIExpression(), !2857)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2858
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2851

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2841, !DIExpression(), !2859)
    #dbg_value(i32 -2139095042, !2842, !DIExpression(), !2860)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2861
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2851

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2840, !DIExpression(), !2862)
    #dbg_value(i32 %4, !2841, !DIExpression(), !2863)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2864
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2851
  br label %runtime.maximumFloat32.exit, !dbg !2851

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2865
}

declare void @GC_init() local_unnamed_addr #3

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #4 !dbg !2866 {
entry:
  %0 = call ptr @tinygo_task_current() #16, !dbg !2867
    #dbg_value(ptr %0, !2361, !DIExpression(), !2881)
    #dbg_value(ptr %0, !2361, !DIExpression(), !2882)
  %1 = icmp eq ptr %0, null, !dbg !2883
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2884

if.then.i.i.i:                                    ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2885
  unreachable, !dbg !2884

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !2361, !DIExpression(), !2886)
    #dbg_value(ptr %0, !2871, !DIExpression(), !2887)
    #dbg_value(ptr @"internal/task.gcState", !2407, !DIExpression(), !2888)
    #dbg_value(ptr @"internal/task.gcState", !2407, !DIExpression(), !2890)
    #dbg_value(ptr @"internal/task.gcState", !2415, !DIExpression(), !2891)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2891
  %3 = icmp eq i32 %2, 0, !dbg !2893
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2894

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2895)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2897)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2269, !DIExpression(), !2898)
    #dbg_value(i32 0, !2274, !DIExpression(), !2898)
    #dbg_value(i32 1, !2275, !DIExpression(), !2898)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2269, !DIExpression(), !2900)
    #dbg_value(i32 0, !2274, !DIExpression(), !2901)
    #dbg_value(i32 1, !2275, !DIExpression(), !2902)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2281, !DIExpression(), !2903)
    #dbg_value(i32 0, !2286, !DIExpression(), !2903)
    #dbg_value(i32 1, !2287, !DIExpression(), !2903)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2903
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2903
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %for.loop.preheader.i.i.i, !dbg !2905

for.loop.preheader.i.i.i:                         ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2906)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2907)
    #dbg_value(i32 2, !2220, !DIExpression(), !2907)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2909)
    #dbg_value(i32 2, !2220, !DIExpression(), !2910)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2225, !DIExpression(), !2911)
    #dbg_value(i32 2, !2232, !DIExpression(), !2911)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2911
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2913
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2905

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %for.loop.preheader.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !2262, !DIExpression(), !2914)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2300, !DIExpression(), !2915)
    #dbg_value(i32 2, !2305, !DIExpression(), !2917)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #16, !dbg !2918
    #dbg_value(ptr @"internal/task.activeTaskLock", !2213, !DIExpression(), !2909)
    #dbg_value(i32 2, !2220, !DIExpression(), !2910)
    #dbg_value(ptr @"internal/task.activeTaskLock", !2225, !DIExpression(), !2911)
    #dbg_value(i32 2, !2232, !DIExpression(), !2911)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2911
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2913
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2905

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %for.loop.preheader.i.i.i, %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2919, !DIExpression(), !2923)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2407, !DIExpression(), !2925)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2407, !DIExpression(), !2927)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2415, !DIExpression(), !2928)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2928
  %9 = icmp eq i32 %8, 0, !dbg !2930
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2931

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2919, !DIExpression(), !2932)
    #dbg_value(i32 %10, !2922, !DIExpression(), !2933)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2300, !DIExpression(), !2934)
    #dbg_value(i32 %10, !2305, !DIExpression(), !2936)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #16, !dbg !2937
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2407, !DIExpression(), !2927)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2415, !DIExpression(), !2928)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2928
    #dbg_value(i32 %11, !2922, !DIExpression(), !2938)
  %12 = icmp eq i32 %11, 0, !dbg !2930
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2931

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2939, !DIExpression(), !2943)
    #dbg_value(i32 1, !2942, !DIExpression(), !2943)
    #dbg_value(ptr @"internal/task.gcState", !2939, !DIExpression(), !2945)
    #dbg_value(i32 1, !2942, !DIExpression(), !2946)
    #dbg_value(ptr @"internal/task.gcState", !2947, !DIExpression(), !2951)
    #dbg_value(i32 1, !2950, !DIExpression(), !2951)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2951
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2953
    #dbg_value(i32 %13, !2872, !DIExpression(), !2953)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2954
    #dbg_value(%"internal/task.Semaphore" poison, !2873, !DIExpression(), !2954)
    #dbg_value(ptr poison, !2874, !DIExpression(), !2955)
    #dbg_value(ptr poison, !2875, !DIExpression(), !2956)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2957
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2958
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2894

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2875, !DIExpression(), !2959)
    #dbg_value(ptr %0, !2871, !DIExpression(), !2960)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2961
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2894

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2875, !DIExpression(), !2962)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2963
  %17 = load ptr, ptr %16, align 8, !dbg !2963
  call void @tinygo_task_send_gc_signal(ptr %17) #16, !dbg !2964
  br label %deref.next15.i.i, !dbg !2894

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2875, !DIExpression(), !2965)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2966
    #dbg_value(ptr poison, !2875, !DIExpression(), !2967)
  %19 = load ptr, ptr %18, align 8, !dbg !2957
    #dbg_value(ptr %19, !2875, !DIExpression(), !2968)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2958
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2894

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2919, !DIExpression(), !2969)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2407, !DIExpression(), !2971)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2407, !DIExpression(), !2973)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2415, !DIExpression(), !2974)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2974
  %21 = icmp eq i32 %20, 0, !dbg !2976
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2977

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2919, !DIExpression(), !2978)
    #dbg_value(i32 %22, !2922, !DIExpression(), !2979)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2300, !DIExpression(), !2980)
    #dbg_value(i32 %22, !2305, !DIExpression(), !2982)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #16, !dbg !2983
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2407, !DIExpression(), !2973)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2415, !DIExpression(), !2974)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2974
    #dbg_value(i32 %23, !2922, !DIExpression(), !2984)
  %24 = icmp eq i32 %23, 0, !dbg !2976
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2977

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2874, !DIExpression(), !2985)
    #dbg_value(ptr poison, !2876, !DIExpression(), !2986)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2987
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2988
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2894

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2876, !DIExpression(), !2989)
    #dbg_value(ptr %0, !2871, !DIExpression(), !2990)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2991
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2894

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2876, !DIExpression(), !2992)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2993
  %28 = load i64, ptr %27, align 8, !dbg !2993
    #dbg_value(ptr %26, !2876, !DIExpression(), !2994)
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2995
  %30 = load i64, ptr %29, align 8, !dbg !2995
    #dbg_value(i64 %28, !2996, !DIExpression(), !3002)
    #dbg_value(i64 %30, !3001, !DIExpression(), !3002)
    #dbg_value(i64 %28, !2996, !DIExpression(), !3004)
    #dbg_value(i64 %30, !3001, !DIExpression(), !3005)
  call void @GC_push_all(i64 %28, i64 %30) #16, !dbg !3006
  br label %deref.next33.i.i, !dbg !2894

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2876, !DIExpression(), !3007)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !3008
    #dbg_value(ptr poison, !2876, !DIExpression(), !3009)
  %32 = load ptr, ptr %31, align 8, !dbg !2987
    #dbg_value(ptr %32, !2876, !DIExpression(), !3010)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2988
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2894

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  call void @tinygo_scanCurrentStack() #16, !dbg !3011
    #dbg_value(ptr undef, !3012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3044)
    #dbg_value(ptr poison, !3012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3044)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3018, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3048)
    #dbg_value(i64 0, !3019, !DIExpression(), !3049)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !3050
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !3051
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !3052

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !3053
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !3018, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3048)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !3054
    #dbg_value(i64 %35, !3018, !DIExpression(), !3048)
  %36 = inttoptr i64 %35 to ptr, !dbg !3055
    #dbg_value(ptr %36, !3018, !DIExpression(), !3048)
  br label %if.then.i.i.i.i, !dbg !3056

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i64 [ %53, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %38 = phi ptr [ %52, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %37, !3019, !DIExpression(), !3057)
    #dbg_value(ptr %38, !3018, !DIExpression(), !3058)
    #dbg_value(ptr %38, !3020, !DIExpression(), !3059)
    #dbg_value(ptr %38, !3020, !DIExpression(), !3060)
  %39 = icmp eq ptr %38, null, !dbg !3056
  br i1 %39, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !3056

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %40 = load i32, ptr %38, align 4, !dbg !3056
  %41 = icmp eq i32 %40, 1, !dbg !3061
  br i1 %41, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !3052

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %38, !3020, !DIExpression(), !3062)
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4, !dbg !3063
  %43 = load i32, ptr %42, align 4, !dbg !3063
  %44 = and i32 %43, 2, !dbg !3064
  %.not.i.i.i.i = icmp eq i32 %44, 0, !dbg !3065
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !3052

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %38, !3020, !DIExpression(), !3066)
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 16, !dbg !3067
  %46 = load i64, ptr %45, align 8, !dbg !3067
    #dbg_value(i64 %46, !3033, !DIExpression(), !3068)
    #dbg_value(i64 %46, !3033, !DIExpression(), !3069)
    #dbg_value(ptr %38, !3020, !DIExpression(), !3070)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3071)
    #dbg_value({ ptr, ptr } poison, !3012, !DIExpression(), !3072)
    #dbg_value(i64 %46, !3033, !DIExpression(), !3073)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3074)
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 40, !dbg !3075
  %48 = load i64, ptr %47, align 8, !dbg !3075
    #dbg_value(!DIArgList(i64 %46, i64 %48), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3074)
  %49 = add i64 %48, %46, !dbg !3076
    #dbg_value(i64 %49, !3034, !DIExpression(), !3074)
    #dbg_value(i64 %46, !2996, !DIExpression(), !3077)
    #dbg_value(i64 %49, !3001, !DIExpression(), !3077)
    #dbg_value(i64 %46, !2996, !DIExpression(), !3079)
    #dbg_value(i64 %49, !3001, !DIExpression(), !3080)
  call void @GC_push_all(i64 %46, i64 %49) #16, !dbg !3081
  br label %if.done.i.i.i.i, !dbg !3052

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
    #dbg_value(ptr %38, !3018, !DIExpression(), !3082)
  %50 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !3083
  %51 = sext i16 %50 to i64, !dbg !3084
  %52 = getelementptr i8, ptr %38, i64 %51, !dbg !3084
    #dbg_value(ptr %52, !3018, !DIExpression(), !3085)
  %53 = add nuw nsw i64 %37, 1, !dbg !3086
    #dbg_value(i64 %53, !3019, !DIExpression(), !3057)
  %54 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !3050
  %55 = zext i16 %54 to i64, !dbg !3087
  %56 = icmp samesign ult i64 %53, %55, !dbg !3051
  br i1 %56, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !3052

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !3056
  unreachable, !dbg !3056

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !3088
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #4 !dbg !3089 {
entry:
    #dbg_value(i64 %sp, !3092, !DIExpression(), !3093)
    #dbg_value(i64 %sp, !3092, !DIExpression(), !3094)
  %0 = call ptr @tinygo_task_current() #16, !dbg !3095
    #dbg_value(ptr %0, !2361, !DIExpression(), !3099)
    #dbg_value(ptr %0, !2361, !DIExpression(), !3100)
  %1 = icmp eq ptr %0, null, !dbg !3101
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !3102

if.then.i.i:                                      ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !3103
  unreachable, !dbg !3102

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !2361, !DIExpression(), !3104)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !3105
  %3 = load i64, ptr %2, align 8, !dbg !3105
    #dbg_value(i64 %sp, !2996, !DIExpression(), !3106)
    #dbg_value(i64 %3, !3001, !DIExpression(), !3106)
    #dbg_value(i64 %sp, !2996, !DIExpression(), !3108)
    #dbg_value(i64 %3, !3001, !DIExpression(), !3109)
  call void @GC_push_all(i64 %sp, i64 %3) #16, !dbg !3110
  ret void, !dbg !3111
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #4 !dbg !3112 {
entry:
    #dbg_value(i32 %argc, !3116, !DIExpression(), !3121)
    #dbg_value(ptr %argv, !3117, !DIExpression(), !3121)
    #dbg_value(i32 %argc, !3116, !DIExpression(), !3122)
    #dbg_value(i32 %argc, !3118, !DIExpression(), !3123)
    #dbg_value(ptr %argv, !3117, !DIExpression(), !3124)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !3125
    #dbg_value(ptr %argv, !3119, !DIExpression(), !3125)
  call void @tinygo_register_fatal_signals() #16, !dbg !3126
  %0 = call ptr @llvm.stacksave.p0(), !dbg !3127
  %1 = ptrtoint ptr %0 to i64, !dbg !3132
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !3133
    #dbg_value(i64 %1, !3120, !DIExpression(), !3133)
  call fastcc void @runtime.runMain(), !dbg !3134
  ret i64 0, !dbg !3135
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #12 !dbg !3136 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !3137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !3137
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !3137
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #16, !dbg !3153
    #dbg_value(i32 %0, !3140, !DIExpression(), !3154)
    #dbg_value(i32 %0, !3140, !DIExpression(), !3155)
  %.not.i.i.i = icmp eq i32 %0, 8, !dbg !3156
  br i1 %.not.i.i.i, label %runtime.run.exit, label %if.then.i.i.i, !dbg !3157

if.then.i.i.i:                                    ; preds = %entry
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !3158
  br label %runtime.run.exit, !dbg !3158

runtime.run.exit:                                 ; preds = %entry, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !3157
    #dbg_value(i64 poison, !3145, !DIExpression(), !3159)
    #dbg_value(i64 poison, !3145, !DIExpression(), !3160)
    #dbg_value(i64 poison, !3146, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3161)
    #dbg_value(i64 poison, !3146, !DIExpression(), !3162)
    #dbg_value(i64 poison, !3147, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3163)
  call void @GC_init() #16, !dbg !3164
  call void @tinygo_runtime_bdwgc_init() #16, !dbg !3167
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !3168
    #dbg_value(i64 %1, !3151, !DIExpression(), !3168)
    #dbg_value(i64 %1, !3169, !DIExpression(), !3173)
    #dbg_value(i64 %1, !3169, !DIExpression(), !3175)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !3176
    #dbg_value(i64 %1, !3172, !DIExpression(), !3176)
  call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #16, !dbg !3177
  call void @main.main(ptr undef) #16, !dbg !3178
  ret void, !dbg !3179
}

declare void @main.main(ptr) local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #4 !dbg !3180 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !3186
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !3189
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !3192
    #dbg_value(i64 %66, !3196, !DIExpression(), !3212)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !3213
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !3214
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !3216
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !3219
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !3222
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !3225
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !3228
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !3231
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !3234
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !3237
    #dbg_value(i32 %sig, !3184, !DIExpression(), !3240)
    #dbg_value(i64 %addr, !3185, !DIExpression(), !3240)
    #dbg_value(i64 %addr, !3185, !DIExpression(), !3241)
  %.not = icmp eq i64 %addr, 0, !dbg !3242
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !3243

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2476, !DIExpression(), !3244)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3245)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !3246
  %2 = load i8, ptr %1, align 1, !dbg !3246
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !3247
    #dbg_value(i8 %2, !2482, !DIExpression(), !3247)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !3247
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !3248
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !3249
  %4 = add nuw nsw i64 %0, 1, !dbg !3250
    #dbg_value(i64 %4, !2476, !DIExpression(), !3251)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !3252
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !3253

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !3185, !DIExpression(), !3254)
  call fastcc void @runtime.printptr(i64 %addr), !dbg !3255
  br label %for.body.i2, !dbg !3243

for.body.i2:                                      ; preds = %runtime.printstring.exit, %for.body.i47
    #dbg_value(ptr poison, !2475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3256)
    #dbg_value(i64 16, !2475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3256)
    #dbg_value(i64 0, !2476, !DIExpression(), !3257)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3258)
    #dbg_value(i64 0, !2476, !DIExpression(), !3259)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3260)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 58, !2482, !DIExpression(), !3261)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 1, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 32, !2482, !DIExpression(), !3261)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 2, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 99, !2482, !DIExpression(), !3261)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 3, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 97, !2482, !DIExpression(), !3261)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 4, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 117, !2482, !DIExpression(), !3261)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 5, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 103, !2482, !DIExpression(), !3261)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 6, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 104, !2482, !DIExpression(), !3261)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 7, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 116, !2482, !DIExpression(), !3261)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 8, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 32, !2482, !DIExpression(), !3261)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 9, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 115, !2482, !DIExpression(), !3261)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 10, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 105, !2482, !DIExpression(), !3261)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 11, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 103, !2482, !DIExpression(), !3261)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 12, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 110, !2482, !DIExpression(), !3261)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 13, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 97, !2482, !DIExpression(), !3261)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 14, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 108, !2482, !DIExpression(), !3261)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 15, !2476, !DIExpression(), !3264)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3261
    #dbg_value(i8 32, !2482, !DIExpression(), !3261)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !3261
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !3263
    #dbg_value(i64 16, !2476, !DIExpression(), !3264)
    #dbg_value(i32 %sig, !3184, !DIExpression(), !3265)
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !3243

switch.body:                                      ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3266)
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3270)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3271)
    #dbg_value(i32 0, !2274, !DIExpression(), !3271)
    #dbg_value(i32 1, !2275, !DIExpression(), !3271)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3273)
    #dbg_value(i32 0, !2274, !DIExpression(), !3274)
    #dbg_value(i32 1, !2275, !DIExpression(), !3275)
    #dbg_value(ptr @runtime.printLock, !2281, !DIExpression(), !3276)
    #dbg_value(i32 0, !2286, !DIExpression(), !3276)
    #dbg_value(i32 1, !2287, !DIExpression(), !3276)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3276
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !3276
  br i1 %22, label %for.body.i6, label %for.loop.preheader.i.i, !dbg !3278

for.loop.preheader.i.i:                           ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3279)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3280)
    #dbg_value(i32 2, !2220, !DIExpression(), !3280)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3282)
    #dbg_value(i32 2, !2220, !DIExpression(), !3283)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3284)
    #dbg_value(i32 2, !2232, !DIExpression(), !3284)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3284
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !3286
  br i1 %.not4.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !3278

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %for.loop.preheader.i.i, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3287)
    #dbg_value(ptr @runtime.printLock, !2300, !DIExpression(), !3288)
    #dbg_value(i32 2, !2305, !DIExpression(), !3290)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !3291
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3282)
    #dbg_value(i32 2, !2220, !DIExpression(), !3283)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3284)
    #dbg_value(i32 2, !2232, !DIExpression(), !3284)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3284
  %.not.i.i = icmp eq i32 %24, 0, !dbg !3286
  br i1 %.not.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !3278

for.body.i6:                                      ; preds = %for.loop.preheader.i.i, %switch.body, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr poison, !2475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3292)
    #dbg_value(i64 6, !2475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3292)
    #dbg_value(i64 0, !2476, !DIExpression(), !3293)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3294)
    #dbg_value(i64 0, !2476, !DIExpression(), !3295)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3296)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3297
    #dbg_value(i8 83, !2482, !DIExpression(), !3297)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !3297
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3299
    #dbg_value(i64 1, !2476, !DIExpression(), !3300)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3297
    #dbg_value(i8 73, !2482, !DIExpression(), !3297)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !3297
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3299
    #dbg_value(i64 2, !2476, !DIExpression(), !3300)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3297
    #dbg_value(i8 71, !2482, !DIExpression(), !3297)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !3297
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3299
    #dbg_value(i64 3, !2476, !DIExpression(), !3300)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3297
    #dbg_value(i8 66, !2482, !DIExpression(), !3297)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !3297
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3299
    #dbg_value(i64 4, !2476, !DIExpression(), !3300)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3297
    #dbg_value(i8 85, !2482, !DIExpression(), !3297)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !3297
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3299
    #dbg_value(i64 5, !2476, !DIExpression(), !3300)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3297
    #dbg_value(i8 83, !2482, !DIExpression(), !3297)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !3297
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !3299
    #dbg_value(i64 6, !2476, !DIExpression(), !3300)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !3301
    #dbg_value(i8 10, !2482, !DIExpression(), !3301)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !3301
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #16, !dbg !3302
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !3303
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3304)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3308)
    #dbg_value(i32 0, !2220, !DIExpression(), !3310)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3311)
    #dbg_value(i32 0, !2232, !DIExpression(), !3311)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3311
    #dbg_value(i32 %32, !2209, !DIExpression(), !3313)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %gep.next5.i.i
  ], !dbg !3314

if.then.i.i:                                      ; preds = %for.body.i6
  call fastcc void @runtime._panic(), !dbg !3315
  unreachable, !dbg !3315

gep.next5.i.i:                                    ; preds = %for.body.i6
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3316)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3317)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3319)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #16, !dbg !3320
  br label %switch.done, !dbg !3314

switch.done:                                      ; preds = %gep.next5.i.i43, %runtime.printint32.exit, %gep.next5.i.i33, %for.body.i29, %gep.next5.i.i20, %for.body.i16, %gep.next5.i.i, %for.body.i6
    #dbg_value(i32 %sig, !3184, !DIExpression(), !3321)
  call void @raise(i32 %sig) #16, !dbg !3322
  ret void, !dbg !3323

switch.body3:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3324)
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3327)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3328)
    #dbg_value(i32 0, !2274, !DIExpression(), !3328)
    #dbg_value(i32 1, !2275, !DIExpression(), !3328)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3330)
    #dbg_value(i32 0, !2274, !DIExpression(), !3331)
    #dbg_value(i32 1, !2275, !DIExpression(), !3332)
    #dbg_value(ptr @runtime.printLock, !2281, !DIExpression(), !3333)
    #dbg_value(i32 0, !2286, !DIExpression(), !3333)
    #dbg_value(i32 1, !2287, !DIExpression(), !3333)
  %33 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3333
  %34 = extractvalue { i32, i1 } %33, 1, !dbg !3333
  br i1 %34, label %for.body.i16, label %for.loop.preheader.i.i10, !dbg !3335

for.loop.preheader.i.i10:                         ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3336)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3337)
    #dbg_value(i32 2, !2220, !DIExpression(), !3337)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3339)
    #dbg_value(i32 2, !2220, !DIExpression(), !3340)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3341)
    #dbg_value(i32 2, !2232, !DIExpression(), !3341)
  %35 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3341
  %.not4.i.i11 = icmp eq i32 %35, 0, !dbg !3343
  br i1 %.not4.i.i11, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !3335

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %for.loop.preheader.i.i10, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3344)
    #dbg_value(ptr @runtime.printLock, !2300, !DIExpression(), !3345)
    #dbg_value(i32 2, !2305, !DIExpression(), !3347)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !3348
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3339)
    #dbg_value(i32 2, !2220, !DIExpression(), !3340)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3341)
    #dbg_value(i32 2, !2232, !DIExpression(), !3341)
  %36 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3341
  %.not.i.i13 = icmp eq i32 %36, 0, !dbg !3343
  br i1 %.not.i.i13, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !3335

for.body.i16:                                     ; preds = %for.loop.preheader.i.i10, %switch.body3, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr poison, !2475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3349)
    #dbg_value(i64 6, !2475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3349)
    #dbg_value(i64 0, !2476, !DIExpression(), !3350)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3351)
    #dbg_value(i64 0, !2476, !DIExpression(), !3352)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3353)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3354
    #dbg_value(i8 83, !2482, !DIExpression(), !3354)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !3354
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3356
    #dbg_value(i64 1, !2476, !DIExpression(), !3357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3354
    #dbg_value(i8 73, !2482, !DIExpression(), !3354)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3354
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3356
    #dbg_value(i64 2, !2476, !DIExpression(), !3357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3354
    #dbg_value(i8 71, !2482, !DIExpression(), !3354)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !3354
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3356
    #dbg_value(i64 3, !2476, !DIExpression(), !3357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3354
    #dbg_value(i8 73, !2482, !DIExpression(), !3354)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3354
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3356
    #dbg_value(i64 4, !2476, !DIExpression(), !3357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3354
    #dbg_value(i8 76, !2482, !DIExpression(), !3354)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3354
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3356
    #dbg_value(i64 5, !2476, !DIExpression(), !3357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3354
    #dbg_value(i8 76, !2482, !DIExpression(), !3354)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3354
  %42 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3356
    #dbg_value(i64 6, !2476, !DIExpression(), !3357)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3358
    #dbg_value(i8 10, !2482, !DIExpression(), !3358)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !3358
  %43 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #16, !dbg !3359
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3360
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3361)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3364)
    #dbg_value(i32 0, !2220, !DIExpression(), !3366)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3367)
    #dbg_value(i32 0, !2232, !DIExpression(), !3367)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3367
    #dbg_value(i32 %44, !2209, !DIExpression(), !3369)
  switch i32 %44, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %gep.next5.i.i20
  ], !dbg !3370

if.then.i.i21:                                    ; preds = %for.body.i16
  call fastcc void @runtime._panic(), !dbg !3371
  unreachable, !dbg !3371

gep.next5.i.i20:                                  ; preds = %for.body.i16
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3372)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3373)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3375)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #16, !dbg !3376
  br label %switch.done, !dbg !3370

switch.body5:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3377)
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3380)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3381)
    #dbg_value(i32 0, !2274, !DIExpression(), !3381)
    #dbg_value(i32 1, !2275, !DIExpression(), !3381)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3383)
    #dbg_value(i32 0, !2274, !DIExpression(), !3384)
    #dbg_value(i32 1, !2275, !DIExpression(), !3385)
    #dbg_value(ptr @runtime.printLock, !2281, !DIExpression(), !3386)
    #dbg_value(i32 0, !2286, !DIExpression(), !3386)
    #dbg_value(i32 1, !2287, !DIExpression(), !3386)
  %45 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3386
  %46 = extractvalue { i32, i1 } %45, 1, !dbg !3386
  br i1 %46, label %for.body.i29, label %for.loop.preheader.i.i23, !dbg !3388

for.loop.preheader.i.i23:                         ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3389)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3390)
    #dbg_value(i32 2, !2220, !DIExpression(), !3390)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3392)
    #dbg_value(i32 2, !2220, !DIExpression(), !3393)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3394)
    #dbg_value(i32 2, !2232, !DIExpression(), !3394)
  %47 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3394
  %.not4.i.i24 = icmp eq i32 %47, 0, !dbg !3396
  br i1 %.not4.i.i24, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3388

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %for.loop.preheader.i.i23, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3397)
    #dbg_value(ptr @runtime.printLock, !2300, !DIExpression(), !3398)
    #dbg_value(i32 2, !2305, !DIExpression(), !3400)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !3401
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3392)
    #dbg_value(i32 2, !2220, !DIExpression(), !3393)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3394)
    #dbg_value(i32 2, !2232, !DIExpression(), !3394)
  %48 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3394
  %.not.i.i26 = icmp eq i32 %48, 0, !dbg !3396
  br i1 %.not.i.i26, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3388

for.body.i29:                                     ; preds = %for.loop.preheader.i.i23, %switch.body5, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr poison, !2475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3402)
    #dbg_value(i64 7, !2475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3402)
    #dbg_value(i64 0, !2476, !DIExpression(), !3403)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3404)
    #dbg_value(i64 0, !2476, !DIExpression(), !3405)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3406)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 83, !2482, !DIExpression(), !3407)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 1, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 73, !2482, !DIExpression(), !3407)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 2, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 71, !2482, !DIExpression(), !3407)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 3, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 83, !2482, !DIExpression(), !3407)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 4, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 69, !2482, !DIExpression(), !3407)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %53 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 5, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 71, !2482, !DIExpression(), !3407)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %54 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 6, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3407
    #dbg_value(i8 86, !2482, !DIExpression(), !3407)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !3407
  %55 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3408
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3409
    #dbg_value(i64 7, !2476, !DIExpression(), !3410)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3411
    #dbg_value(i8 10, !2482, !DIExpression(), !3411)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !3411
  %56 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #16, !dbg !3412
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3413
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3414)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3417)
    #dbg_value(i32 0, !2220, !DIExpression(), !3419)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3420)
    #dbg_value(i32 0, !2232, !DIExpression(), !3420)
  %57 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3420
    #dbg_value(i32 %57, !2209, !DIExpression(), !3422)
  switch i32 %57, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %gep.next5.i.i33
  ], !dbg !3423

if.then.i.i34:                                    ; preds = %for.body.i29
  call fastcc void @runtime._panic(), !dbg !3424
  unreachable, !dbg !3424

gep.next5.i.i33:                                  ; preds = %for.body.i29
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3425)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3426)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3428)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #16, !dbg !3429
  br label %switch.done, !dbg !3423

switch.next6:                                     ; preds = %for.body.i2
    #dbg_value(i32 %sig, !3184, !DIExpression(), !3430)
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3431)
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3434)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3435)
    #dbg_value(i32 0, !2274, !DIExpression(), !3435)
    #dbg_value(i32 1, !2275, !DIExpression(), !3435)
    #dbg_value(ptr @runtime.printLock, !2269, !DIExpression(), !3437)
    #dbg_value(i32 0, !2274, !DIExpression(), !3438)
    #dbg_value(i32 1, !2275, !DIExpression(), !3439)
    #dbg_value(ptr @runtime.printLock, !2281, !DIExpression(), !3440)
    #dbg_value(i32 0, !2286, !DIExpression(), !3440)
    #dbg_value(i32 1, !2287, !DIExpression(), !3440)
  %58 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3440
  %59 = extractvalue { i32, i1 } %58, 1, !dbg !3440
  br i1 %59, label %runtime.printlock.exit40, label %for.loop.preheader.i.i36, !dbg !3442

for.loop.preheader.i.i36:                         ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3443)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3444)
    #dbg_value(i32 2, !2220, !DIExpression(), !3444)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3446)
    #dbg_value(i32 2, !2220, !DIExpression(), !3447)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3448)
    #dbg_value(i32 2, !2232, !DIExpression(), !3448)
  %60 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3448
  %.not4.i.i37 = icmp eq i32 %60, 0, !dbg !3450
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3442

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %for.loop.preheader.i.i36, %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !2262, !DIExpression(), !3451)
    #dbg_value(ptr @runtime.printLock, !2300, !DIExpression(), !3452)
    #dbg_value(i32 2, !2305, !DIExpression(), !3454)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !3455
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3446)
    #dbg_value(i32 2, !2220, !DIExpression(), !3447)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3448)
    #dbg_value(i32 2, !2232, !DIExpression(), !3448)
  %61 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3448
  %.not.i.i39 = icmp eq i32 %61, 0, !dbg !3450
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3442

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %for.loop.preheader.i.i36
    #dbg_value(i32 %sig, !3210, !DIExpression(), !3456)
    #dbg_value(i32 %sig, !3210, !DIExpression(), !3457)
  %62 = icmp slt i32 %sig, 0, !dbg !3458
  br i1 %62, label %if.then.i, label %if.done.i, !dbg !3459

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3460
    #dbg_value(i8 45, !2482, !DIExpression(), !3461)
    #dbg_value(i8 45, !2482, !DIExpression(), !3460)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3460
    #dbg_value(i8 45, !2482, !DIExpression(), !3460)
  %63 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #16, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3463
    #dbg_value(i32 %sig, !3210, !DIExpression(), !3464)
  %64 = sub i32 0, %sig, !dbg !3465
    #dbg_value(i32 %64, !3210, !DIExpression(), !3466)
  br label %if.done.i, !dbg !3459

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %65 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %64, %if.then.i ], !dbg !3467
    #dbg_value(i32 %65, !3210, !DIExpression(), !3468)
    #dbg_value(i32 %65, !3206, !DIExpression(), !3469)
    #dbg_value(i32 %65, !3206, !DIExpression(), !3470)
  %66 = zext i32 %65 to i64, !dbg !3471
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3213
    #dbg_value(i64 19, !3197, !DIExpression(), !3472)
    #dbg_value(i64 19, !3198, !DIExpression(), !3473)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !3213
  br label %for.body.i.i.i, !dbg !3474

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !3200, !DIExpression(), !3475)
  %67 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3476
  br i1 %67, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3474

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %68 = phi i64 [ 19, %if.done.i ], [ %76, %for.body.i.i.i ]
  %69 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %70 = phi i64 [ %66, %if.done.i ], [ %75, %for.body.i.i.i ]
    #dbg_value(i64 %68, !3198, !DIExpression(), !3477)
    #dbg_value(i64 %70, !3196, !DIExpression(), !3478)
  %71 = urem i64 %70, 10, !dbg !3479
  %72 = trunc nuw nsw i64 %71 to i8, !dbg !3480
  %73 = or disjoint i8 %72, 48, !dbg !3480
    #dbg_value(i8 %73, !3199, !DIExpression(), !3481)
  %74 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %68, !dbg !3482
  store i8 %73, ptr %74, align 1, !dbg !3482
  %.not.i.i.i = icmp eq i64 %71, 0, !dbg !3483
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %69, i64 %68, !dbg !3474
  %75 = udiv i64 %70, 10, !dbg !3484
    #dbg_value(i64 %75, !3196, !DIExpression(), !3484)
  %76 = add nsw i64 %68, -1, !dbg !3485
    #dbg_value(i64 %76, !3198, !DIExpression(), !3477)
  %.not23.i.i.i = icmp eq i64 %68, 0, !dbg !3486
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3474

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %77 = phi i64 [ %81, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %77, !3200, !DIExpression(), !3487)
  %78 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %77, !dbg !3488
  %79 = load i8, ptr %78, align 1, !dbg !3488
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3489
    #dbg_value(i8 %79, !2482, !DIExpression(), !3489)
  store i8 %79, ptr %stackalloc.i.i.i.i, align 1, !dbg !3489
  %80 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #16, !dbg !3490
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3491
  %81 = add i64 %77, 1, !dbg !3492
    #dbg_value(i64 %81, !3200, !DIExpression(), !3475)
  %exitcond.not.i.i.i = icmp eq i64 %81, 20, !dbg !3476
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3474

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3493
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3494
    #dbg_value(i8 10, !2482, !DIExpression(), !3495)
    #dbg_value(i8 10, !2482, !DIExpression(), !3494)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3494
    #dbg_value(i8 10, !2482, !DIExpression(), !3494)
  %82 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #16, !dbg !3496
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3497
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3498)
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3501)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3502)
    #dbg_value(i32 0, !2220, !DIExpression(), !3502)
    #dbg_value(ptr @runtime.printLock, !2213, !DIExpression(), !3504)
    #dbg_value(i32 0, !2220, !DIExpression(), !3505)
    #dbg_value(ptr @runtime.printLock, !2225, !DIExpression(), !3506)
    #dbg_value(i32 0, !2232, !DIExpression(), !3506)
  %83 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3506
    #dbg_value(i32 %83, !2209, !DIExpression(), !3508)
    #dbg_value(i32 %83, !2209, !DIExpression(), !3509)
  switch i32 %83, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %gep.next5.i.i43
  ], !dbg !3510

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  call fastcc void @runtime._panic(), !dbg !3511
  unreachable, !dbg !3511

gep.next5.i.i43:                                  ; preds = %runtime.printint32.exit
    #dbg_value(ptr @runtime.printLock, !2208, !DIExpression(), !3512)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3513)
    #dbg_value(ptr @runtime.printLock, !2240, !DIExpression(), !3515)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #16, !dbg !3516
  br label %switch.done, !dbg !3510

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %84 = phi i64 [ %88, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %84, !2476, !DIExpression(), !3517)
    #dbg_value(%runtime._string poison, !2475, !DIExpression(), !3518)
  %85 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %84, !dbg !3519
  %86 = load i8, ptr %85, align 1, !dbg !3519
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3520
    #dbg_value(i8 %86, !2482, !DIExpression(), !3520)
  store i8 %86, ptr %stackalloc.i.i46, align 1, !dbg !3520
  %87 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #16, !dbg !3521
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3522
  %88 = add nuw nsw i64 %84, 1, !dbg !3523
    #dbg_value(i64 %88, !2476, !DIExpression(), !3524)
  %exitcond.not.i48 = icmp eq i64 %88, 20, !dbg !3525
  br i1 %exitcond.not.i48, label %for.body.i2, label %for.body.i47, !dbg !3526
}

declare void @raise(i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #4 !dbg !3527 {
entry:
    #dbg_value(i32 %s, !3529, !DIExpression(), !3533)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3534

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3529, !DIExpression(), !3535)
    #dbg_value(i32 %shift.result, !3530, !DIExpression(), !3536)
    #dbg_value(ptr @runtime.receivedSignals, !2407, !DIExpression(), !3537)
    #dbg_value(ptr @runtime.receivedSignals, !2407, !DIExpression(), !3539)
    #dbg_value(ptr @runtime.receivedSignals, !2415, !DIExpression(), !3540)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3540
    #dbg_value(i32 %1, !3531, !DIExpression(), !3542)
    #dbg_value(i32 %1, !3531, !DIExpression(), !3543)
    #dbg_value(i32 %1, !3531, !DIExpression(), !3544)
    #dbg_value(i32 %shift.result, !3530, !DIExpression(), !3545)
  %2 = or i32 %1, %shift.result, !dbg !3546
    #dbg_value(ptr @runtime.receivedSignals, !2269, !DIExpression(), !3547)
    #dbg_value(i32 %1, !2274, !DIExpression(), !3547)
    #dbg_value(i32 %2, !2275, !DIExpression(), !3547)
    #dbg_value(ptr @runtime.receivedSignals, !2269, !DIExpression(), !3549)
    #dbg_value(i32 %1, !2274, !DIExpression(), !3550)
    #dbg_value(i32 %2, !2275, !DIExpression(), !3551)
    #dbg_value(ptr @runtime.receivedSignals, !2281, !DIExpression(), !3552)
    #dbg_value(i32 %1, !2286, !DIExpression(), !3552)
    #dbg_value(i32 %2, !2287, !DIExpression(), !3552)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3552
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3552
    #dbg_value(i1 %4, !3532, !DIExpression(), !3554)
    #dbg_value(i1 %4, !3532, !DIExpression(), !3555)
  br i1 %4, label %if.then, label %for.body, !dbg !3534

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !2213, !DIExpression(), !3556)
    #dbg_value(i32 1, !2220, !DIExpression(), !3556)
    #dbg_value(ptr @runtime.signalFutex, !2213, !DIExpression(), !3558)
    #dbg_value(i32 1, !2220, !DIExpression(), !3559)
    #dbg_value(ptr @runtime.signalFutex, !2225, !DIExpression(), !3560)
    #dbg_value(i32 1, !2232, !DIExpression(), !3560)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3560
  %6 = icmp eq i32 %5, 0, !dbg !3562
  br i1 %6, label %if.then1, label %if.done, !dbg !3534

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !2400, !DIExpression(), !3563)
    #dbg_value(ptr @runtime.signalFutex, !2400, !DIExpression(), !3565)
  call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #16, !dbg !3566
  br label %if.done, !dbg !3534

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3567
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable(sync)
define double @f_gold(i64 %side) local_unnamed_addr #2 !dbg !3568 {
entry:
    #dbg_value(i64 %side, !3571, !DIExpression(), !3572)
    #dbg_value(i64 %side, !3571, !DIExpression(), !3573)
  %0 = sitofp i64 %side to double, !dbg !3574
  %1 = call fastcc double @math.Pow(double %0, double 3.000000e+00), !dbg !3575
  %2 = fmul double %1, 0x401EA708A824F613, !dbg !3576
  ret double %2, !dbg !3577
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #15

attributes #0 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { nofree nosync nounwind memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #9 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #12 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

!llvm.dbg.cu = !{!138, !140, !420, !439, !636, !680, !681, !682, !698, !714, !1445, !1456, !1489, !1490, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !2, file: !2, line: 45, type: !3, isLocal: false, isDefinition: true, align: 64)
!2 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !5)
!5 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !6)
!6 = !{!7, !8, !10, !12, !16, !44, !46, !48, !49}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !3, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !11, size: 64, align: 64, offset: 128)
!11 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !13, align: 8, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !15)
!15 = !{}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !17, size: 384, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !19)
!19 = !{!20, !22, !24, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !21, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !21, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !3, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !28, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !37, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !41, align: 8)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !14)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !45, size: 8, align: 8, offset: 576)
!45 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !47, size: 8, align: 8, offset: 584)
!47 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !45, size: 8, align: 8, offset: 592)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !9, size: 64, align: 64, offset: 640)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !2, file: !2, line: 42, type: !4, isLocal: false, isDefinition: true, align: 64)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !54, line: 1, type: !55, isLocal: true, isDefinition: true)
!54 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 240, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 30, lowerBound: 0)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !2, file: !2, line: 40, type: !60, isLocal: false, isDefinition: true, align: 32)
!60 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !2, file: !2, line: 46, type: !63, isLocal: false, isDefinition: true, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !29)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20, lowerBound: 0)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !2, file: !2, line: 99, type: !43, isLocal: false, isDefinition: true, align: 32)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 136, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 17, lowerBound: 0)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !2, file: !2, line: 151, type: !79, isLocal: false, isDefinition: true, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !32, size: 32, align: 32)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !2, file: !2, line: 180, type: !32, isLocal: false, isDefinition: true, align: 32)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!87 = !DIFile(filename: "<Go type>", directory: "")
!88 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8)
!91 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 64)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !96)
!96 = !{!90, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 16)
!98 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 64)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !102, line: 78, type: !103, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7, lowerBound: 0)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !102, line: 99, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 24, lowerBound: 0)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !102, line: 101, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2, lowerBound: 0)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !102, line: 184, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 23, lowerBound: 0)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !123, file: !123, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!123 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !123, file: !123, line: 106, type: !126, isLocal: false, isDefinition: true, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !123, line: 155, type: !108, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !123, line: 158, type: !67, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !123, file: !123, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !123, file: !123, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !137, file: !137, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!137 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!139 = !DIFile(filename: "<unknown>", directory: "")
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !141)
!141 = !{!142, !145, !194, !202, !217, !227, !233, !242, !268, !275, !281, !301, !306, !311, !313, !315, !320, !322, !324, !326, !331, !336, !338, !343, !345, !348, !350, !352, !354, !356, !361, !366, !368, !373, !375, !377, !382, !384, !386, !388, !390, !392, !394, !396, !398, !403, !405, !407, !409, !93, !85, !415}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !144, file: !144, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!144 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !144, file: !144, line: 23, type: !147, isLocal: false, isDefinition: true, align: 8)
!147 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !148)
!148 = !{!149, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !151)
!151 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !154, size: 512, align: 8)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 512, align: 8, elements: !156)
!155 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!156 = !{!157}
!157 = !DISubrange(count: 64, lowerBound: 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8, offset: 792)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !144, file: !144, line: 65, type: !196, isLocal: false, isDefinition: true, align: 8)
!196 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !197)
!197 = !{!149, !198, !199, !200, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8, offset: 536)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !144, file: !144, line: 75, type: !204, isLocal: false, isDefinition: true, align: 8)
!204 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !205)
!205 = !{!149, !158, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8, offset: 600)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !144, file: !144, line: 93, type: !219, isLocal: false, isDefinition: true, align: 8)
!219 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !220)
!220 = !{!149, !221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8, offset: 552)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !144, file: !144, line: 103, type: !229, isLocal: false, isDefinition: true, align: 8)
!229 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !230)
!230 = !{!149, !231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8, offset: 520)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !144, file: !144, line: 114, type: !235, isLocal: false, isDefinition: true, align: 8)
!235 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !236)
!236 = !{!149, !237, !238, !239, !240, !241, !226}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !144, file: !144, line: 124, type: !244, isLocal: false, isDefinition: true, align: 8)
!244 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !245)
!245 = !{!149, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !150, size: 512, align: 8, offset: 680)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !144, file: !144, line: 154, type: !270, isLocal: false, isDefinition: true, align: 8)
!270 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !271)
!271 = !{!149, !272, !273, !274, !201}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !144, file: !144, line: 174, type: !277, isLocal: false, isDefinition: true, align: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !144, file: !144, line: 192, type: !283, isLocal: false, isDefinition: true, align: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !284)
!284 = !{!285, !295, !300}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64, dwarfAddressSpace: 0)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !288)
!288 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !289)
!289 = !{!290, !296, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !291, size: 128, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !292)
!292 = !{!293, !295}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !297, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !144, line: 218, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 4, lowerBound: 0)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !144, line: 223, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 33, lowerBound: 0)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !144, line: 223, type: !113, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !144, line: 230, type: !113, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !144, line: 239, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 3, lowerBound: 0)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !144, line: 255, type: !55, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !144, line: 255, type: !113, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !144, line: 232, type: !317, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !144, line: 235, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 16, lowerBound: 0)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !144, line: 235, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 32, lowerBound: 0)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !144, line: 235, type: !113, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !144, line: 264, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 25, lowerBound: 0)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !144, line: 264, type: !118, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !347, file: !347, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!347 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !347, line: 73, type: !317, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !347, line: 74, type: !317, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !347, line: 75, type: !303, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !347, line: 76, type: !303, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !347, line: 77, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 9, lowerBound: 0)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !347, line: 78, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 6, lowerBound: 0)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !347, line: 79, type: !317, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !347, line: 80, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 10, lowerBound: 0)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !347, line: 87, type: !363, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !347, line: 88, type: !303, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !347, line: 89, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 5, lowerBound: 0)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !347, line: 90, type: !379, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !347, line: 91, type: !379, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !347, line: 97, type: !317, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !347, line: 98, type: !303, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !347, line: 99, type: !303, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !347, line: 100, type: !303, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !347, line: 101, type: !317, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !347, line: 107, type: !103, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !347, line: 108, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 8, lowerBound: 0)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !347, line: 109, type: !400, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !347, line: 110, type: !400, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !347, line: 111, type: !400, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !411, line: 1, type: !412, isLocal: true, isDefinition: true)
!411 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 13, lowerBound: 0)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !411, line: 1, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 83, lowerBound: 0)
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !421)
!421 = !{!422, !426, !428, !437}
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !424, file: !424, line: 44, type: !425, isLocal: false, isDefinition: true, align: 8)
!424 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, align: 8, elements: !334)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !424, file: !424, line: 51, type: !154, isLocal: false, isDefinition: true, align: 8)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !430, file: !430, line: 12, type: !431, isLocal: false, isDefinition: true, align: 64)
!430 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !430, file: !430, line: 15, type: !431, isLocal: false, isDefinition: true, align: 64)
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !440)
!440 = !{!441, !443, !446, !451, !454, !457, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !530, !532, !534, !539, !541, !543, !545, !549, !552, !557, !560, !562, !566, !568, !571, !573, !577, !581, !583, !585, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !144, file: !144, line: 23, type: !147, isLocal: false, isDefinition: true, align: 8)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !445, file: !445, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!445 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !448, file: !448, line: 66, type: !449, isLocal: false, isDefinition: true, align: 64)
!448 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 448, align: 64, elements: !104)
!450 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !448, file: !448, line: 75, type: !453, isLocal: false, isDefinition: true, align: 64)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 512, align: 64, elements: !401)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !448, file: !448, line: 85, type: !456, isLocal: false, isDefinition: true, align: 64)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 320, align: 64, elements: !380)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !459, file: !459, line: 240, type: !460, isLocal: false, isDefinition: true, align: 64)
!459 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 384, align: 64, elements: !364)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !459, file: !459, line: 248, type: !456, isLocal: false, isDefinition: true, align: 64)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !459, file: !459, line: 257, type: !460, isLocal: false, isDefinition: true, align: 64)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !459, file: !459, line: 265, type: !456, isLocal: false, isDefinition: true, align: 64)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !459, file: !459, line: 274, type: !460, isLocal: false, isDefinition: true, align: 64)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !459, file: !459, line: 282, type: !456, isLocal: false, isDefinition: true, align: 64)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !459, file: !459, line: 291, type: !460, isLocal: false, isDefinition: true, align: 64)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !459, file: !459, line: 299, type: !456, isLocal: false, isDefinition: true, align: 64)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !459, file: !459, line: 339, type: !460, isLocal: false, isDefinition: true, align: 64)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !459, file: !459, line: 347, type: !460, isLocal: false, isDefinition: true, align: 64)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !459, file: !459, line: 357, type: !460, isLocal: false, isDefinition: true, align: 64)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !459, file: !459, line: 365, type: !460, isLocal: false, isDefinition: true, align: 64)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !459, file: !459, line: 375, type: !460, isLocal: false, isDefinition: true, align: 64)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !459, file: !459, line: 383, type: !460, isLocal: false, isDefinition: true, align: 64)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !459, file: !459, line: 393, type: !460, isLocal: false, isDefinition: true, align: 64)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !459, file: !459, line: 401, type: !460, isLocal: false, isDefinition: true, align: 64)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !493, file: !493, line: 235, type: !460, isLocal: false, isDefinition: true, align: 64)
!493 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !493, file: !493, line: 243, type: !456, isLocal: false, isDefinition: true, align: 64)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !493, file: !493, line: 252, type: !460, isLocal: false, isDefinition: true, align: 64)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !493, file: !493, line: 260, type: !456, isLocal: false, isDefinition: true, align: 64)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !493, file: !493, line: 269, type: !460, isLocal: false, isDefinition: true, align: 64)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !493, file: !493, line: 277, type: !456, isLocal: false, isDefinition: true, align: 64)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !493, file: !493, line: 286, type: !460, isLocal: false, isDefinition: true, align: 64)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !493, file: !493, line: 294, type: !456, isLocal: false, isDefinition: true, align: 64)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !493, file: !493, line: 334, type: !460, isLocal: false, isDefinition: true, align: 64)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !493, file: !493, line: 342, type: !460, isLocal: false, isDefinition: true, align: 64)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !493, file: !493, line: 352, type: !460, isLocal: false, isDefinition: true, align: 64)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !493, file: !493, line: 360, type: !460, isLocal: false, isDefinition: true, align: 64)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !493, file: !493, line: 370, type: !460, isLocal: false, isDefinition: true, align: 64)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !493, file: !493, line: 378, type: !460, isLocal: false, isDefinition: true, align: 64)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !493, file: !493, line: 388, type: !460, isLocal: false, isDefinition: true, align: 64)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !493, file: !493, line: 396, type: !460, isLocal: false, isDefinition: true, align: 64)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !526, file: !526, line: 91, type: !527, isLocal: false, isDefinition: true, align: 64)
!526 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 768, align: 64, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 12, lowerBound: 0)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !526, file: !526, line: 105, type: !449, isLocal: false, isDefinition: true, align: 64)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !526, file: !526, line: 114, type: !449, isLocal: false, isDefinition: true, align: 64)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !526, file: !526, line: 123, type: !536, isLocal: false, isDefinition: true, align: 64)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 960, align: 64, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 15, lowerBound: 0)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !526, file: !526, line: 140, type: !460, isLocal: false, isDefinition: true, align: 64)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !526, file: !526, line: 148, type: !460, isLocal: false, isDefinition: true, align: 64)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !526, file: !526, line: 156, type: !449, isLocal: false, isDefinition: true, align: 64)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !547, file: !547, line: 8, type: !548, isLocal: false, isDefinition: true, align: 64)
!547 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 2048, align: 64, elements: !334)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !547, file: !547, line: 16, type: !551, isLocal: false, isDefinition: true, align: 64)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 640, align: 64, elements: !371)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !547, file: !547, line: 21, type: !554, isLocal: false, isDefinition: true, align: 64)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 704, align: 64, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 11, lowerBound: 0)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !559, file: !559, line: 93, type: !460, isLocal: false, isDefinition: true, align: 64)
!559 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !559, file: !559, line: 103, type: !460, isLocal: false, isDefinition: true, align: 64)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !564, file: !564, line: 63, type: !565, isLocal: false, isDefinition: true, align: 64)
!564 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 192, align: 64, elements: !318)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !564, file: !564, line: 68, type: !456, isLocal: false, isDefinition: true, align: 64)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !570, file: !570, line: 57, type: !565, isLocal: false, isDefinition: true, align: 64)
!570 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !570, file: !570, line: 62, type: !565, isLocal: false, isDefinition: true, align: 64)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !575, file: !575, line: 81, type: !576, isLocal: false, isDefinition: true, align: 64)
!575 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !579, line: 1, type: !580, isLocal: true, isDefinition: true)
!579 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !537)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!587 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !587, line: 1, type: !580, isLocal: true, isDefinition: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !637)
!637 = !{!638, !644, !646, !648, !653, !655, !660, !665, !670, !675}
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !641, isLocal: true, isDefinition: true)
!640 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 53, lowerBound: 0)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 60, lowerBound: 0)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !640, file: !640, line: 42, type: !155, isLocal: false, isDefinition: true, align: 8)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 70, lowerBound: 0)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 42, lowerBound: 0)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 59, lowerBound: 0)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 41, lowerBound: 0)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !640, line: 1, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 58, lowerBound: 0)
!680 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !683)
!683 = !{!684, !690, !692, !694, !696}
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 12, type: !687, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 1, lowerBound: 0)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !686, line: 20, type: !687, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !686, line: 40, type: !317, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !686, line: 46, type: !328, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !686, line: 51, type: !328, isLocal: true, isDefinition: true)
!698 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !699)
!699 = !{!700, !706}
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !702, file: !702, line: 71, type: !703, isLocal: false, isDefinition: true, align: 8)
!702 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 256, lowerBound: 0)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !702, file: !702, line: 100, type: !708, isLocal: false, isDefinition: true, align: 8)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 256, align: 8, elements: !329)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !710)
!710 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !715)
!715 = !{!716, !719, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !753, !755, !758, !760, !762, !764, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !865, !883, !888, !890, !892, !894, !896, !898, !900, !902, !914, !920, !930, !934, !939, !941, !943, !945, !954, !956, !964, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1028, !1034, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1105, !1110, !1115, !1120, !1122, !1124, !1126, !1131, !1133, !1135, !1137, !1139, !1141, !1146, !1148, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1207, !1209, !1211, !1213, !1215, !1217, !1222, !1224, !1226, !1228, !1230, !1232, !1237, !1239, !1241, !1246, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1275, !1277, !1279, !1281, !1283, !1285, !1287, !1289, !1291, !1296, !1298, !1303, !1308, !1310, !1312, !1314, !1319, !1321, !1323, !1325, !1327, !1332, !1334, !1336, !1338, !1340, !1342, !1347, !1349, !1354, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1376, !1381, !1383, !1388, !1390, !1392, !1394, !1396, !1399, !1401, !1403, !1405, !1407, !1409, !1411, !1413, !1415, !1417, !1422, !1424, !1426, !1428, !1430, !1432, !1434, !1436, !1438, !1440, !1443}
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !718, line: 393, type: !303, isLocal: true, isDefinition: true)
!718 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !718, file: !718, line: 393, type: !721, isLocal: false, isDefinition: true, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64, dwarfAddressSpace: 0)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !723)
!723 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !291, size: 128, align: 64)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !718, line: 394, type: !317, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !718, file: !718, line: 394, type: !721, isLocal: false, isDefinition: true, align: 64)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !718, line: 395, type: !379, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !718, file: !718, line: 395, type: !721, isLocal: false, isDefinition: true, align: 64)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !718, line: 396, type: !303, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !718, file: !718, line: 396, type: !721, isLocal: false, isDefinition: true, align: 64)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !718, line: 397, type: !317, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !718, file: !718, line: 397, type: !721, isLocal: false, isDefinition: true, align: 64)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !718, line: 398, type: !400, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !718, file: !718, line: 398, type: !721, isLocal: false, isDefinition: true, align: 64)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !718, line: 399, type: !103, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !718, file: !718, line: 399, type: !721, isLocal: false, isDefinition: true, align: 64)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !718, line: 400, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !555)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !718, file: !718, line: 400, type: !721, isLocal: false, isDefinition: true, align: 64)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !718, line: 401, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !528)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !718, file: !718, line: 401, type: !721, isLocal: false, isDefinition: true, align: 64)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "type *uint8", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(name: "type uint8", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !766, file: !766, line: 956, type: !767, isLocal: false, isDefinition: true, align: 64)
!766 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64, align: 64, dwarfAddressSpace: 0)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !87, file: !87, line: 1, type: !854, isLocal: false, isDefinition: true, align: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !855)
!855 = !{!90, !97, !92, !856, !857, !858, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !860, size: 128, align: 64, offset: 256)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 128, align: 64, elements: !688)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !862)
!862 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !863)
!863 = !{!435, !864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !294, size: 64, align: 64, offset: 64)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !867, isLocal: false, isDefinition: true, align: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875, !881}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !876, size: 320, align: 64, offset: 320)
!876 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !880, size: 256, align: 64, offset: 64)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !304)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !882, size: 160, align: 8, offset: 640)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !68)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !885, isLocal: true, isDefinition: true)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 28, lowerBound: 0)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !580, isLocal: true, isDefinition: true)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !885, isLocal: true, isDefinition: true)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !412, isLocal: true, isDefinition: true)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !885, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !752, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !885, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !757, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !904, isLocal: false, isDefinition: true, align: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !905)
!905 = !{!869, !870, !871, !906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !908, size: 2304, align: 64, offset: 192)
!908 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !909)
!909 = !{!878, !910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !911, size: 2240, align: 64, offset: 64)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 35, lowerBound: 0)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !916, isLocal: false, isDefinition: true, align: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !917)
!917 = !{!90, !97, !92, !856, !857, !858, !918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !919, size: 384, align: 64, offset: 256)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 384, align: 64, elements: !318)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !922, isLocal: false, isDefinition: true, align: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !923)
!923 = !{!90, !97, !92, !924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !927, size: 144, align: 8, offset: 256)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, align: 8, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 18, lowerBound: 0)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !932, file: !932, line: 12, type: !933, isLocal: false, isDefinition: true, align: 8)
!932 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !932, line: 17, type: !936, isLocal: true, isDefinition: true)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 14, lowerBound: 0)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !932, line: 1, type: !55, isLocal: true, isDefinition: true)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !932, line: 1, type: !379, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !947, isLocal: false, isDefinition: true, align: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !948)
!948 = !{!869, !870, !871, !906, !949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !950, size: 128, align: 64, offset: 192)
!950 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !951)
!951 = !{!878, !952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !953, size: 64, align: 64, offset: 64)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !688)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(name: "type struct{}", scope: !87, file: !87, line: 1, type: !958, isLocal: false, isDefinition: true, align: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !959)
!959 = !{!90, !97, !92, !856, !857, !858, !960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !961, align: 64, offset: 256)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, align: 64, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 0, lowerBound: 0)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !966, isLocal: false, isDefinition: true, align: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !967)
!967 = !{!869, !870, !871, !872, !873, !874, !968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !950, size: 128, align: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !970, size: 176, align: 8, offset: 448)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 176, align: 8, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 22, lowerBound: 0)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(scope: null, file: !932, line: 250, type: !113, isLocal: true, isDefinition: true)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !932, line: 251, type: !580, isLocal: true, isDefinition: true)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !932, line: 252, type: !580, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !932, line: 278, type: !113, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !932, line: 280, type: !113, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !932, line: 282, type: !113, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !932, line: 284, type: !113, isLocal: true, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !932, line: 286, type: !113, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !932, line: 288, type: !113, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !932, line: 290, type: !113, isLocal: true, isDefinition: true)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !932, line: 294, type: !113, isLocal: true, isDefinition: true)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !932, line: 295, type: !580, isLocal: true, isDefinition: true)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !932, line: 296, type: !580, isLocal: true, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !932, line: 301, type: !113, isLocal: true, isDefinition: true)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(scope: null, file: !932, line: 303, type: !580, isLocal: true, isDefinition: true)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !932, line: 306, type: !113, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !932, line: 308, type: !580, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !1009, line: 16, type: !103, isLocal: true, isDefinition: true)
!1009 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !340, isLocal: true, isDefinition: true)
!1018 = !DIGlobalVariableExpression(var: !1019, expr: !DIExpression())
!1019 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !363, isLocal: true, isDefinition: true)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !947, isLocal: false, isDefinition: true, align: 64)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !1024, isLocal: false, isDefinition: true, align: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1025)
!1025 = !{!869, !870, !871, !872, !873, !874, !968, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1027, size: 136, align: 8, offset: 448)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, align: 8, elements: !75)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !1030, isLocal: false, isDefinition: true, align: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !1031)
!1031 = !{!90, !97, !92, !856, !857, !858, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1033, size: 256, align: 64, offset: 256)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 256, align: 64, elements: !114)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !1036, isLocal: false, isDefinition: true, align: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1037)
!1037 = !{!90, !97, !92, !924, !925, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1039, size: 184, align: 8, offset: 256)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, align: 8, elements: !119)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !947, isLocal: false, isDefinition: true, align: 64)
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(scope: null, file: !1009, line: 1, type: !308, isLocal: true, isDefinition: true)
!1044 = !DIGlobalVariableExpression(var: !1045, expr: !DIExpression())
!1045 = distinct !DIGlobalVariable(scope: null, file: !718, line: 60, type: !103, isLocal: true, isDefinition: true)
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(scope: null, file: !718, line: 62, type: !303, isLocal: true, isDefinition: true)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !718, line: 64, type: !317, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !718, line: 66, type: !303, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !718, line: 68, type: !379, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !718, line: 70, type: !379, isLocal: true, isDefinition: true)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !718, line: 72, type: !379, isLocal: true, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !718, line: 74, type: !303, isLocal: true, isDefinition: true)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(scope: null, file: !718, line: 76, type: !379, isLocal: true, isDefinition: true)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !718, line: 78, type: !363, isLocal: true, isDefinition: true)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !718, line: 80, type: !363, isLocal: true, isDefinition: true)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !718, line: 82, type: !363, isLocal: true, isDefinition: true)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !718, line: 84, type: !103, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !718, line: 86, type: !103, isLocal: true, isDefinition: true)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(scope: null, file: !718, line: 88, type: !103, isLocal: true, isDefinition: true)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !718, line: 90, type: !358, isLocal: true, isDefinition: true)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(scope: null, file: !718, line: 92, type: !370, isLocal: true, isDefinition: true)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !718, line: 94, type: !363, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !718, line: 96, type: !936, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !718, line: 98, type: !303, isLocal: true, isDefinition: true)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !718, line: 100, type: !358, isLocal: true, isDefinition: true)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !718, line: 102, type: !317, isLocal: true, isDefinition: true)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !718, line: 104, type: !379, isLocal: true, isDefinition: true)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(scope: null, file: !718, line: 106, type: !379, isLocal: true, isDefinition: true)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(scope: null, file: !718, line: 108, type: !303, isLocal: true, isDefinition: true)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(scope: null, file: !718, line: 110, type: !317, isLocal: true, isDefinition: true)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !718, line: 112, type: !363, isLocal: true, isDefinition: true)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !718, line: 114, type: !303, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !1102, isLocal: true, isDefinition: true)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 44, lowerBound: 0)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !1107, isLocal: true, isDefinition: true)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 40, lowerBound: 0)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !1112, isLocal: true, isDefinition: true)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 36, lowerBound: 0)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 38, lowerBound: 0)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !333, isLocal: true, isDefinition: true)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !87, file: !87, line: 1, type: !854, isLocal: false, isDefinition: true, align: 64)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !1128, isLocal: false, isDefinition: true, align: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1129)
!1129 = !{!90, !97, !92, !924, !925, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !970, size: 176, align: 8, offset: 256)
!1131 = !DIGlobalVariableExpression(var: !1132, expr: !DIExpression())
!1132 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !947, isLocal: false, isDefinition: true, align: 64)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1059, type: !580, isLocal: true, isDefinition: true)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !641, isLocal: true, isDefinition: true)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !74, isLocal: true, isDefinition: true)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !718, line: 965, type: !103, isLocal: true, isDefinition: true)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !1143, isLocal: true, isDefinition: true)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 27, lowerBound: 0)
!1146 = !DIGlobalVariableExpression(var: !1147, expr: !DIExpression())
!1147 = distinct !DIGlobalVariable(scope: null, file: !718, line: 329, type: !103, isLocal: true, isDefinition: true)
!1148 = !DIGlobalVariableExpression(var: !1149, expr: !DIExpression())
!1149 = distinct !DIGlobalVariable(scope: null, file: !718, line: 331, type: !103, isLocal: true, isDefinition: true)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !718, line: 338, type: !363, isLocal: true, isDefinition: true)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !718, line: 338, type: !687, isLocal: true, isDefinition: true)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !718, line: 340, type: !379, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !718, line: 344, type: !687, isLocal: true, isDefinition: true)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !718, line: 346, type: !113, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !718, line: 348, type: !687, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !718, line: 348, type: !687, isLocal: true, isDefinition: true)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !718, line: 350, type: !303, isLocal: true, isDefinition: true)
!1166 = !DIGlobalVariableExpression(var: !1167, expr: !DIExpression())
!1167 = distinct !DIGlobalVariable(scope: null, file: !718, line: 350, type: !687, isLocal: true, isDefinition: true)
!1168 = !DIGlobalVariableExpression(var: !1169, expr: !DIExpression())
!1169 = distinct !DIGlobalVariable(scope: null, file: !718, line: 354, type: !358, isLocal: true, isDefinition: true)
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(scope: null, file: !718, line: 356, type: !400, isLocal: true, isDefinition: true)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !718, line: 359, type: !687, isLocal: true, isDefinition: true)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !718, line: 359, type: !687, isLocal: true, isDefinition: true)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !718, line: 361, type: !687, isLocal: true, isDefinition: true)
!1178 = !DIGlobalVariableExpression(var: !1179, expr: !DIExpression())
!1179 = distinct !DIGlobalVariable(scope: null, file: !718, line: 365, type: !687, isLocal: true, isDefinition: true)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !718, line: 368, type: !113, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !718, line: 372, type: !757, isLocal: true, isDefinition: true)
!1184 = !DIGlobalVariableExpression(var: !1185, expr: !DIExpression())
!1185 = distinct !DIGlobalVariable(scope: null, file: !718, line: 356, type: !400, isLocal: true, isDefinition: true)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !308, isLocal: true, isDefinition: true)
!1188 = !DIGlobalVariableExpression(var: !1189, expr: !DIExpression())
!1189 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !333, isLocal: true, isDefinition: true)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1212, type: !328, isLocal: true, isDefinition: true)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !333, isLocal: true, isDefinition: true)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !333, isLocal: true, isDefinition: true)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !308, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !55, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(scope: null, file: !718, line: 1, type: !1204, isLocal: true, isDefinition: true)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1205)
!1205 = !{!1206}
!1206 = !DISubrange(count: 31, lowerBound: 0)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression())
!1208 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !672, isLocal: true, isDefinition: true)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(scope: null, file: !766, line: 441, type: !303, isLocal: true, isDefinition: true)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(scope: null, file: !766, line: 650, type: !379, isLocal: true, isDefinition: true)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(scope: null, file: !766, line: 658, type: !379, isLocal: true, isDefinition: true)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !766, line: 667, type: !379, isLocal: true, isDefinition: true)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1219, isLocal: true, isDefinition: true)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 37, lowerBound: 0)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !662, isLocal: true, isDefinition: true)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !766, line: 824, type: !317, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !766, line: 843, type: !379, isLocal: true, isDefinition: true)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !766, line: 630, type: !103, isLocal: true, isDefinition: true)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1425, type: !1219, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1425, type: !1234, isLocal: true, isDefinition: true)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 29, lowerBound: 0)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(scope: null, file: !766, line: 875, type: !303, isLocal: true, isDefinition: true)
!1239 = !DIGlobalVariableExpression(var: !1240, expr: !DIExpression())
!1240 = distinct !DIGlobalVariable(scope: null, file: !766, line: 407, type: !1112, isLocal: true, isDefinition: true)
!1241 = !DIGlobalVariableExpression(var: !1242, expr: !DIExpression())
!1242 = distinct !DIGlobalVariable(scope: null, file: !766, line: 407, type: !1243, isLocal: true, isDefinition: true)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 19, lowerBound: 0)
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !308, isLocal: true, isDefinition: true)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(scope: null, file: !766, line: 882, type: !379, isLocal: true, isDefinition: true)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !766, line: 2067, type: !757, isLocal: true, isDefinition: true)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !667, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !766, line: 2085, type: !580, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !766, line: 2090, type: !752, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !766, line: 2101, type: !752, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !766, line: 598, type: !379, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !766, line: 573, type: !379, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1234, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1957, type: !303, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !308, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1272, isLocal: true, isDefinition: true)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 34, lowerBound: 0)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression())
!1276 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1041, type: !379, isLocal: true, isDefinition: true)
!1277 = !DIGlobalVariableExpression(var: !1278, expr: !DIExpression())
!1278 = distinct !DIGlobalVariable(scope: null, file: !766, line: 488, type: !317, isLocal: true, isDefinition: true)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1219, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !766, line: 247, type: !379, isLocal: true, isDefinition: true)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !766, line: 201, type: !687, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(scope: null, file: !766, line: 209, type: !67, isLocal: true, isDefinition: true)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !766, line: 806, type: !317, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1117, type: !400, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1293, isLocal: true, isDefinition: true)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 50, lowerBound: 0)
!1296 = !DIGlobalVariableExpression(var: !1297, expr: !DIExpression())
!1297 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1074, type: !103, isLocal: true, isDefinition: true)
!1298 = !DIGlobalVariableExpression(var: !1299, expr: !DIExpression())
!1299 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1300, isLocal: true, isDefinition: true)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 39, lowerBound: 0)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1305, isLocal: true, isDefinition: true)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 45, lowerBound: 0)
!1308 = !DIGlobalVariableExpression(var: !1309, expr: !DIExpression())
!1309 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1047, type: !118, isLocal: true, isDefinition: true)
!1310 = !DIGlobalVariableExpression(var: !1311, expr: !DIExpression())
!1311 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1062, type: !1143, isLocal: true, isDefinition: true)
!1312 = !DIGlobalVariableExpression(var: !1313, expr: !DIExpression())
!1313 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1398, type: !340, isLocal: true, isDefinition: true)
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1411, type: !1316, isLocal: true, isDefinition: true)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 26, lowerBound: 0)
!1319 = !DIGlobalVariableExpression(var: !1320, expr: !DIExpression())
!1320 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1219, isLocal: true, isDefinition: true)
!1321 = !DIGlobalVariableExpression(var: !1322, expr: !DIExpression())
!1322 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1237, type: !308, isLocal: true, isDefinition: true)
!1323 = !DIGlobalVariableExpression(var: !1324, expr: !DIExpression())
!1324 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1237, type: !885, isLocal: true, isDefinition: true)
!1325 = !DIGlobalVariableExpression(var: !1326, expr: !DIExpression())
!1326 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1275, type: !103, isLocal: true, isDefinition: true)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1329, isLocal: true, isDefinition: true)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 43, lowerBound: 0)
!1332 = !DIGlobalVariableExpression(var: !1333, expr: !DIExpression())
!1333 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1300, isLocal: true, isDefinition: true)
!1334 = !DIGlobalVariableExpression(var: !1335, expr: !DIExpression())
!1335 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1341, type: !370, isLocal: true, isDefinition: true)
!1336 = !DIGlobalVariableExpression(var: !1337, expr: !DIExpression())
!1337 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1328, type: !400, isLocal: true, isDefinition: true)
!1338 = !DIGlobalVariableExpression(var: !1339, expr: !DIExpression())
!1339 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1294, type: !363, isLocal: true, isDefinition: true)
!1340 = !DIGlobalVariableExpression(var: !1341, expr: !DIExpression())
!1341 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1344, isLocal: true, isDefinition: true)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 47, lowerBound: 0)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1987, type: !752, isLocal: true, isDefinition: true)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression())
!1350 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1351, isLocal: true, isDefinition: true)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 55, lowerBound: 0)
!1354 = !DIGlobalVariableExpression(var: !1355, expr: !DIExpression())
!1355 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !641, isLocal: true, isDefinition: true)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1352, type: !358, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1315, type: !103, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !766, line: 734, type: !379, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1300, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !766, line: 642, type: !687, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !766, line: 642, type: !103, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !766, line: 541, type: !303, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !766, line: 273, type: !412, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !308, isLocal: true, isDefinition: true)
!1374 = !DIGlobalVariableExpression(var: !1375, expr: !DIExpression())
!1375 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !55, isLocal: true, isDefinition: true)
!1376 = !DIGlobalVariableExpression(var: !1377, expr: !DIExpression())
!1377 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1378, isLocal: true, isDefinition: true)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 46, lowerBound: 0)
!1381 = !DIGlobalVariableExpression(var: !1382, expr: !DIExpression())
!1382 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1218, type: !400, isLocal: true, isDefinition: true)
!1383 = !DIGlobalVariableExpression(var: !1384, expr: !DIExpression())
!1384 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1385, isLocal: true, isDefinition: true)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: 48, lowerBound: 0)
!1388 = !DIGlobalVariableExpression(var: !1389, expr: !DIExpression())
!1389 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !885, isLocal: true, isDefinition: true)
!1390 = !DIGlobalVariableExpression(var: !1391, expr: !DIExpression())
!1391 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !885, isLocal: true, isDefinition: true)
!1392 = !DIGlobalVariableExpression(var: !1393, expr: !DIExpression())
!1393 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1234, isLocal: true, isDefinition: true)
!1394 = !DIGlobalVariableExpression(var: !1395, expr: !DIExpression())
!1395 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1234, isLocal: true, isDefinition: true)
!1396 = !DIGlobalVariableExpression(var: !1397, expr: !DIExpression())
!1397 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1398, isLocal: true, isDefinition: true)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !912)
!1399 = !DIGlobalVariableExpression(var: !1400, expr: !DIExpression())
!1400 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !766, file: !766, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1401 = !DIGlobalVariableExpression(var: !1402, expr: !DIExpression())
!1402 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1716, type: !333, isLocal: true, isDefinition: true)
!1403 = !DIGlobalVariableExpression(var: !1404, expr: !DIExpression())
!1404 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1716, type: !333, isLocal: true, isDefinition: true)
!1405 = !DIGlobalVariableExpression(var: !1406, expr: !DIExpression())
!1406 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1407 = !DIGlobalVariableExpression(var: !1408, expr: !DIExpression())
!1408 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1791, type: !936, isLocal: true, isDefinition: true)
!1409 = !DIGlobalVariableExpression(var: !1410, expr: !DIExpression())
!1410 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1793, type: !303, isLocal: true, isDefinition: true)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1793, type: !363, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1300, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1825, type: !1419, isLocal: true, isDefinition: true)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 21, lowerBound: 0)
!1422 = !DIGlobalVariableExpression(var: !1423, expr: !DIExpression())
!1423 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1825, type: !687, isLocal: true, isDefinition: true)
!1424 = !DIGlobalVariableExpression(var: !1425, expr: !DIExpression())
!1425 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !662, isLocal: true, isDefinition: true)
!1426 = !DIGlobalVariableExpression(var: !1427, expr: !DIExpression())
!1427 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1879, type: !752, isLocal: true, isDefinition: true)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1903, type: !363, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1272, isLocal: true, isDefinition: true)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1204, isLocal: true, isDefinition: true)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(scope: null, file: !766, line: 2125, type: !103, isLocal: true, isDefinition: true)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !1329, isLocal: true, isDefinition: true)
!1438 = !DIGlobalVariableExpression(var: !1439, expr: !DIExpression())
!1439 = distinct !DIGlobalVariable(scope: null, file: !766, line: 1, type: !885, isLocal: true, isDefinition: true)
!1440 = !DIGlobalVariableExpression(var: !1441, expr: !DIExpression())
!1441 = distinct !DIGlobalVariable(scope: null, file: !1442, line: 1, type: !1143, isLocal: true, isDefinition: true)
!1442 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !1442, line: 1, type: !1107, isLocal: true, isDefinition: true)
!1445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1446)
!1446 = !{!1447, !1450, !1452, !1454}
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !1449, line: 1, type: !757, isLocal: true, isDefinition: true)
!1449 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1450 = !DIGlobalVariableExpression(var: !1451, expr: !DIExpression())
!1451 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1452 = !DIGlobalVariableExpression(var: !1453, expr: !DIExpression())
!1453 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1454 = !DIGlobalVariableExpression(var: !1455, expr: !DIExpression())
!1455 = distinct !DIGlobalVariable(scope: null, file: !1449, line: 1, type: !662, isLocal: true, isDefinition: true)
!1456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1457)
!1457 = !{!0, !50, !52, !1458, !1460, !1462, !1468, !1470, !1472, !58, !61, !1474, !65, !1476, !70, !1478, !1480, !1482, !1485, !72, !77, !83, !1487}
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !1464, line: 1, type: !1465, isLocal: true, isDefinition: true)
!1464 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: 62, lowerBound: 0)
!1468 = !DIGlobalVariableExpression(var: !1469, expr: !DIExpression())
!1469 = distinct !DIGlobalVariable(scope: null, file: !1464, line: 1, type: !1465, isLocal: true, isDefinition: true)
!1470 = !DIGlobalVariableExpression(var: !1471, expr: !DIExpression())
!1471 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !757, isLocal: true, isDefinition: true)
!1472 = !DIGlobalVariableExpression(var: !1473, expr: !DIExpression())
!1473 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1474 = !DIGlobalVariableExpression(var: !1475, expr: !DIExpression())
!1475 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !108, isLocal: true, isDefinition: true)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !757, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !757, isLocal: true, isDefinition: true)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !303, isLocal: true, isDefinition: true)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1484, isLocal: true, isDefinition: true)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !971)
!1485 = !DIGlobalVariableExpression(var: !1486, expr: !DIExpression())
!1486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !358, isLocal: true, isDefinition: true)
!1487 = !DIGlobalVariableExpression(var: !1488, expr: !DIExpression())
!1488 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1491)
!1491 = !{!1492, !1495, !1497, !1500, !1502, !1505, !1507, !1509, !1511, !1513, !1516, !1518, !1520, !1523, !1526, !1529, !1532, !1534, !1536, !1538, !1555, !1557, !1560, !1563, !100, !106, !111, !1566, !1568, !116, !1570, !1572, !1574, !1576, !1578, !1580, !1582, !1584, !1586, !1591, !1594, !1596, !1598, !1600, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !121, !1631, !124, !1633, !127, !1639, !1641, !1643, !1645, !129, !131, !1647, !1649, !1651, !1653, !1655, !133, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !135, !1721, !1723, !1726, !1728}
!1492 = !DIGlobalVariableExpression(var: !1493, expr: !DIExpression())
!1493 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1494, file: !1494, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1494 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1495 = !DIGlobalVariableExpression(var: !1496, expr: !DIExpression())
!1496 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1494, file: !1494, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1499, file: !1499, line: 9, type: !450, isLocal: false, isDefinition: true, align: 64)
!1499 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1500 = !DIGlobalVariableExpression(var: !1501, expr: !DIExpression())
!1501 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !123, file: !123, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1502 = !DIGlobalVariableExpression(var: !1503, expr: !DIExpression())
!1503 = distinct !DIGlobalVariable(scope: null, file: !1504, line: 210, type: !1484, isLocal: true, isDefinition: true)
!1504 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(scope: null, file: !1504, line: 267, type: !1484, isLocal: true, isDefinition: true)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !1504, line: 348, type: !67, isLocal: true, isDefinition: true)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !1504, line: 358, type: !118, isLocal: true, isDefinition: true)
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1504, file: !1504, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(scope: null, file: !1515, line: 1, type: !108, isLocal: true, isDefinition: true)
!1515 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1520 = !DIGlobalVariableExpression(var: !1521, expr: !DIExpression())
!1521 = distinct !DIGlobalVariable(scope: null, file: !1522, line: 13, type: !103, isLocal: true, isDefinition: true)
!1522 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1525, file: !1525, line: 142, type: !277, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1526 = !DIGlobalVariableExpression(var: !1527, expr: !DIExpression())
!1527 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1528, file: !1528, line: 10, type: !291, isLocal: false, isDefinition: true, align: 64)
!1528 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !1531, file: !1531, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1531 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !1531, file: !1531, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!1534 = !DIGlobalVariableExpression(var: !1535, expr: !DIExpression())
!1535 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 61, type: !672, isLocal: true, isDefinition: true)
!1536 = !DIGlobalVariableExpression(var: !1537, expr: !DIExpression())
!1537 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 93, type: !74, isLocal: true, isDefinition: true)
!1538 = !DIGlobalVariableExpression(var: !1539, expr: !DIExpression())
!1539 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !1531, file: !1531, line: 112, type: !1540, isLocal: false, isDefinition: true, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1541)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !21, size: 64, align: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !21, size: 64, align: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !21, size: 64, align: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !21, size: 64, align: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !21, size: 64, align: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !21, size: 64, align: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !21, size: 64, align: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !21, size: 64, align: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !21, size: 64, align: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !21, size: 64, align: 64, offset: 704)
!1555 = !DIGlobalVariableExpression(var: !1556, expr: !DIExpression())
!1556 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 135, type: !1272, isLocal: true, isDefinition: true)
!1557 = !DIGlobalVariableExpression(var: !1558, expr: !DIExpression())
!1558 = distinct !DIGlobalVariable(scope: null, file: !1559, line: 616, type: !885, isLocal: true, isDefinition: true)
!1559 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(scope: null, file: !1562, line: 80, type: !885, isLocal: true, isDefinition: true)
!1562 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(scope: null, file: !1562, line: 89, type: !1565, isLocal: true, isDefinition: true)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !928)
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !102, line: 103, type: !1484, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !102, line: 122, type: !1565, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !102, line: 189, type: !55, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !102, line: 194, type: !1565, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !102, line: 199, type: !1565, isLocal: true, isDefinition: true)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !102, line: 205, type: !108, isLocal: true, isDefinition: true)
!1578 = !DIGlobalVariableExpression(var: !1579, expr: !DIExpression())
!1579 = distinct !DIGlobalVariable(scope: null, file: !102, line: 212, type: !1219, isLocal: true, isDefinition: true)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !102, line: 217, type: !1484, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !102, line: 222, type: !936, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !102, line: 227, type: !936, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !102, line: 231, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 52, lowerBound: 0)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !885, isLocal: true, isDefinition: true)
!1593 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !1484, isLocal: true, isDefinition: true)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !118, isLocal: true, isDefinition: true)
!1598 = !DIGlobalVariableExpression(var: !1599, expr: !DIExpression())
!1599 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !340, isLocal: true, isDefinition: true)
!1600 = !DIGlobalVariableExpression(var: !1601, expr: !DIExpression())
!1601 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 117, type: !317, isLocal: true, isDefinition: true)
!1602 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 120, type: !303, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 123, type: !303, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 197, type: !317, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 200, type: !303, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 203, type: !303, isLocal: true, isDefinition: true)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 272, type: !113, isLocal: true, isDefinition: true)
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 279, type: !113, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 355, type: !303, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 357, type: !317, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 373, type: !317, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 391, type: !303, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 393, type: !379, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !1525, line: 36, type: !412, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !1525, line: 97, type: !55, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !123, file: !123, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !123, file: !123, line: 107, type: !1635, isLocal: false, isDefinition: true, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1636)
!1636 = !{!1637, !295, !300}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64, dwarfAddressSpace: 0)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !123, line: 160, type: !328, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !123, line: 163, type: !363, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !123, line: 165, type: !363, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !123, line: 167, type: !103, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !123, file: !123, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !123, file: !123, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !123, file: !123, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !123, line: 317, type: !1143, isLocal: true, isDefinition: true)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !123, file: !123, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !123, line: 365, type: !340, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !123, line: 382, type: !340, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !123, line: 392, type: !340, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !123, file: !123, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !40, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !962)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !8, !10, !12, !1675, !44, !46, !48, !49}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!20, !22, !24, !25, !1679, !27}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !9, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !123, line: 458, type: !1204, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !123, line: 514, type: !1143, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(name: "runtime.timerQueue", linkageName: "runtime.timerQueue", scope: !1687, file: !1687, line: 7, type: !1688, isLocal: false, isDefinition: true, align: 64)
!1687 = !DIFile(filename: "scheduler.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timerNode", baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1691)
!1691 = !{!1692, !1693, !1704}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", baseType: !1688, size: 64, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "timer", baseType: !1694, size: 64, align: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64, align: 64, dwarfAddressSpace: 0)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timer", baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "when", baseType: !1699, size: 64, align: 64)
!1699 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "period", baseType: !1699, size: 64, align: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !277, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !432)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !277, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !317, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !317, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !317, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !412, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !67, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !137, file: !137, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !137, file: !137, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !137, file: !137, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !137, file: !137, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !328, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !328, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !358, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "math.Ldexp", linkageName: "math.Ldexp", scope: !1736, file: !1736, line: 15, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1740)
!1736 = !DIFile(filename: "ldexp.go", directory: "/usr/local/go/src/math")
!1737 = !DISubroutineType(cc: DW_CC_nocall, types: !1738)
!1738 = !{!450, !1739}
!1739 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1740 = !{!1741, !1742}
!1741 = !DILocalVariable(name: "frac", arg: 1, scope: !1735, file: !1736, line: 15, type: !450)
!1742 = !DILocalVariable(name: "exp", arg: 2, scope: !1735, file: !1736, line: 15, type: !1739)
!1743 = !DILocation(line: 15, column: 6, scope: !1735)
!1744 = !DILocation(line: 19, column: 15, scope: !1735)
!1745 = !DILocation(line: 19, column: 21, scope: !1735)
!1746 = !DILocalVariable(name: "frac", arg: 1, scope: !1747, file: !1736, line: 22, type: !450)
!1747 = distinct !DISubprogram(name: "math.ldexp", linkageName: "math.ldexp", scope: !1736, file: !1736, line: 22, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1749)
!1748 = !DISubroutineType(types: !1738)
!1749 = !{!1746, !1750, !1751, !1752, !1753}
!1750 = !DILocalVariable(name: "exp", arg: 2, scope: !1747, file: !1736, line: 22, type: !1739)
!1751 = !DILocalVariable(name: "e", scope: !1747, file: !1736, line: 30, type: !1739)
!1752 = !DILocalVariable(name: "x", scope: !1747, file: !1736, line: 32, type: !11)
!1753 = !DILocalVariable(name: "m", scope: !1747, file: !1736, line: 43, type: !450)
!1754 = !DILocation(line: 22, column: 6, scope: !1747, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 19, column: 14, scope: !1735)
!1756 = !DILocation(line: 25, column: 7, scope: !1747, inlinedAt: !1755)
!1757 = !DILocation(line: 25, column: 12, scope: !1747, inlinedAt: !1755)
!1758 = !DILocation(line: 0, scope: !1747, inlinedAt: !1755)
!1759 = !DILocation(line: 27, column: 13, scope: !1747, inlinedAt: !1755)
!1760 = !DILocalVariable(name: "f", arg: 1, scope: !1761, file: !1762, line: 46, type: !450)
!1761 = distinct !DISubprogram(name: "math.IsInf", linkageName: "math.IsInf", scope: !1762, file: !1762, line: 46, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1763)
!1762 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math")
!1763 = !{!1760, !1764}
!1764 = !DILocalVariable(name: "sign", arg: 2, scope: !1761, file: !1762, line: 46, type: !1739)
!1765 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 27, column: 12, scope: !1747, inlinedAt: !1755)
!1767 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !1766)
!1768 = !DILocation(line: 0, scope: !1761, inlinedAt: !1766)
!1769 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !1766)
!1770 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !1766)
!1771 = !DILocation(line: 27, column: 31, scope: !1747, inlinedAt: !1755)
!1772 = !DILocation(line: 30, column: 23, scope: !1747, inlinedAt: !1755)
!1773 = !DILocalVariable(name: "x", arg: 1, scope: !1774, file: !1762, line: 61, type: !450)
!1774 = distinct !DISubprogram(name: "math.normalize", linkageName: "math.normalize", scope: !1762, file: !1762, line: 61, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!450}
!1777 = !{!1773}
!1778 = !DILocation(line: 61, column: 6, scope: !1774, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 30, column: 22, scope: !1747, inlinedAt: !1755)
!1780 = !DILocation(line: 63, column: 9, scope: !1774, inlinedAt: !1779)
!1781 = !DILocation(line: 63, column: 12, scope: !1774, inlinedAt: !1779)
!1782 = !DILocation(line: 0, scope: !1774, inlinedAt: !1779)
!1783 = !DILocation(line: 30, column: 2, scope: !1747, inlinedAt: !1755)
!1784 = !DILocation(line: 30, column: 8, scope: !1747, inlinedAt: !1755)
!1785 = !DILocation(line: 31, column: 9, scope: !1747, inlinedAt: !1755)
!1786 = !DILocation(line: 31, column: 2, scope: !1747, inlinedAt: !1755)
!1787 = !DILocation(line: 32, column: 19, scope: !1747, inlinedAt: !1755)
!1788 = !DILocalVariable(name: "f", arg: 1, scope: !1789, file: !1790, line: 35, type: !450)
!1789 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1790, file: !1790, line: 35, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1791)
!1790 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1791 = !{!1788}
!1792 = !DILocation(line: 35, column: 6, scope: !1789, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 32, column: 18, scope: !1747, inlinedAt: !1755)
!1794 = !DILocation(line: 35, column: 45, scope: !1789, inlinedAt: !1793)
!1795 = !DILocation(line: 32, column: 2, scope: !1747, inlinedAt: !1755)
!1796 = !DILocation(line: 33, column: 13, scope: !1747, inlinedAt: !1755)
!1797 = !DILocation(line: 33, column: 14, scope: !1747, inlinedAt: !1755)
!1798 = !DILocation(line: 33, column: 22, scope: !1747, inlinedAt: !1755)
!1799 = !DILocation(line: 33, column: 28, scope: !1747, inlinedAt: !1755)
!1800 = !DILocation(line: 33, column: 2, scope: !1747, inlinedAt: !1755)
!1801 = !DILocation(line: 34, column: 5, scope: !1747, inlinedAt: !1755)
!1802 = !DILocation(line: 34, column: 9, scope: !1747, inlinedAt: !1755)
!1803 = !DILocation(line: 35, column: 22, scope: !1747, inlinedAt: !1755)
!1804 = !DILocalVariable(name: "f", arg: 1, scope: !1805, file: !1806, line: 9, type: !450)
!1805 = distinct !DISubprogram(name: "math.Copysign", linkageName: "math.Copysign", scope: !1806, file: !1806, line: 9, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1809)
!1806 = !DIFile(filename: "copysign.go", directory: "/usr/local/go/src/math")
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!450, !450}
!1809 = !{!1804, !1810}
!1810 = !DILocalVariable(name: "sign", arg: 2, scope: !1805, file: !1806, line: 9, type: !450)
!1811 = !DILocation(line: 9, column: 6, scope: !1805, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 35, column: 18, scope: !1747, inlinedAt: !1755)
!1813 = !DILocation(line: 11, column: 37, scope: !1805, inlinedAt: !1812)
!1814 = !DILocation(line: 11, column: 63, scope: !1805, inlinedAt: !1812)
!1815 = !DILocalVariable(name: "b", arg: 1, scope: !1816, file: !1790, line: 41, type: !11)
!1816 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1790, file: !1790, line: 41, type: !1817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!11}
!1819 = !{!1815}
!1820 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 11, column: 24, scope: !1805, inlinedAt: !1812)
!1822 = !DILocation(line: 41, column: 49, scope: !1816, inlinedAt: !1821)
!1823 = !DILocation(line: 35, column: 3, scope: !1747, inlinedAt: !1755)
!1824 = !DILocation(line: 37, column: 5, scope: !1747, inlinedAt: !1755)
!1825 = !DILocation(line: 37, column: 9, scope: !1747, inlinedAt: !1755)
!1826 = !DILocation(line: 38, column: 6, scope: !1747, inlinedAt: !1755)
!1827 = !DILocation(line: 38, column: 11, scope: !1747, inlinedAt: !1755)
!1828 = !DILocation(line: 43, column: 6, scope: !1747, inlinedAt: !1755)
!1829 = !DILocation(line: 44, column: 5, scope: !1747, inlinedAt: !1755)
!1830 = !DILocation(line: 44, column: 9, scope: !1747, inlinedAt: !1755)
!1831 = !DILocation(line: 48, column: 2, scope: !1747, inlinedAt: !1755)
!1832 = !DILocation(line: 49, column: 14, scope: !1747, inlinedAt: !1755)
!1833 = !DILocation(line: 49, column: 24, scope: !1747, inlinedAt: !1755)
!1834 = !DILocation(line: 49, column: 2, scope: !1747, inlinedAt: !1755)
!1835 = !DILocation(line: 50, column: 9, scope: !1747, inlinedAt: !1755)
!1836 = !DILocation(line: 50, column: 29, scope: !1747, inlinedAt: !1755)
!1837 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 50, column: 28, scope: !1747, inlinedAt: !1755)
!1839 = !DILocation(line: 41, column: 49, scope: !1816, inlinedAt: !1838)
!1840 = !DILocation(line: 50, column: 11, scope: !1747, inlinedAt: !1755)
!1841 = !DILocation(line: 50, column: 2, scope: !1747, inlinedAt: !1755)
!1842 = !DILocation(line: 19, column: 2, scope: !1735)
!1843 = distinct !DISubprogram(name: "math.Frexp", linkageName: "math.Frexp", scope: !1844, file: !1844, line: 17, type: !1845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1846)
!1844 = !DIFile(filename: "frexp.go", directory: "/usr/local/go/src/math")
!1845 = !DISubroutineType(cc: DW_CC_nocall, types: !1776)
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "f", arg: 1, scope: !1843, file: !1844, line: 17, type: !450)
!1848 = !DILocation(line: 17, column: 6, scope: !1843)
!1849 = !DILocation(line: 21, column: 15, scope: !1843)
!1850 = !DILocalVariable(name: "f", arg: 1, scope: !1851, file: !1844, line: 24, type: !450)
!1851 = distinct !DISubprogram(name: "math.frexp", linkageName: "math.frexp", scope: !1844, file: !1844, line: 24, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1852)
!1852 = !{!1850, !1853, !1854, !1855}
!1853 = !DILocalVariable(name: "exp", scope: !1851, file: !1844, line: 24, type: !1739)
!1854 = !DILocalVariable(name: "x", scope: !1851, file: !1844, line: 33, type: !11)
!1855 = !DILocalVariable(name: "frac", scope: !1851, file: !1844, line: 24, type: !450)
!1856 = !DILocation(line: 24, column: 6, scope: !1851, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 21, column: 14, scope: !1843)
!1858 = !DILocation(line: 27, column: 7, scope: !1851, inlinedAt: !1857)
!1859 = !DILocation(line: 27, column: 9, scope: !1851, inlinedAt: !1857)
!1860 = !DILocation(line: 0, scope: !1851, inlinedAt: !1857)
!1861 = !DILocation(line: 29, column: 13, scope: !1851, inlinedAt: !1857)
!1862 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 29, column: 12, scope: !1851, inlinedAt: !1857)
!1864 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !1863)
!1865 = !DILocation(line: 0, scope: !1761, inlinedAt: !1863)
!1866 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !1863)
!1867 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !1863)
!1868 = !DILocation(line: 29, column: 28, scope: !1851, inlinedAt: !1857)
!1869 = !DILocation(line: 32, column: 21, scope: !1851, inlinedAt: !1857)
!1870 = !DILocation(line: 61, column: 6, scope: !1774, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 32, column: 20, scope: !1851, inlinedAt: !1857)
!1872 = !DILocation(line: 63, column: 9, scope: !1774, inlinedAt: !1871)
!1873 = !DILocation(line: 63, column: 12, scope: !1774, inlinedAt: !1871)
!1874 = !DILocation(line: 0, scope: !1774, inlinedAt: !1871)
!1875 = !DILocation(line: 32, column: 2, scope: !1851, inlinedAt: !1857)
!1876 = !DILocation(line: 32, column: 5, scope: !1851, inlinedAt: !1857)
!1877 = !DILocation(line: 33, column: 19, scope: !1851, inlinedAt: !1857)
!1878 = !DILocation(line: 35, column: 6, scope: !1789, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 33, column: 18, scope: !1851, inlinedAt: !1857)
!1880 = !DILocation(line: 35, column: 45, scope: !1789, inlinedAt: !1879)
!1881 = !DILocation(line: 33, column: 2, scope: !1851, inlinedAt: !1857)
!1882 = !DILocation(line: 34, column: 14, scope: !1851, inlinedAt: !1857)
!1883 = !DILocation(line: 34, column: 15, scope: !1851, inlinedAt: !1857)
!1884 = !DILocation(line: 34, column: 23, scope: !1851, inlinedAt: !1857)
!1885 = !DILocation(line: 34, column: 37, scope: !1851, inlinedAt: !1857)
!1886 = !DILocation(line: 34, column: 2, scope: !1851, inlinedAt: !1857)
!1887 = !DILocation(line: 35, column: 2, scope: !1851, inlinedAt: !1857)
!1888 = !DILocation(line: 36, column: 2, scope: !1851, inlinedAt: !1857)
!1889 = !DILocation(line: 37, column: 25, scope: !1851, inlinedAt: !1857)
!1890 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 37, column: 24, scope: !1851, inlinedAt: !1857)
!1892 = !DILocation(line: 41, column: 49, scope: !1816, inlinedAt: !1891)
!1893 = !DILocation(line: 37, column: 2, scope: !1851, inlinedAt: !1857)
!1894 = !DILocation(line: 38, column: 2, scope: !1851, inlinedAt: !1857)
!1895 = !DILocation(line: 21, column: 2, scope: !1843)
!1896 = distinct !DISubprogram(name: "math.Pow", linkageName: "math.Pow", scope: !1897, file: !1897, line: 48, type: !1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1899)
!1897 = !DIFile(filename: "pow.go", directory: "/usr/local/go/src/math")
!1898 = !DISubroutineType(cc: DW_CC_nocall, types: !1808)
!1899 = !{!1900, !1901}
!1900 = !DILocalVariable(name: "x", arg: 1, scope: !1896, file: !1897, line: 48, type: !450)
!1901 = !DILocalVariable(name: "y", arg: 2, scope: !1896, file: !1897, line: 48, type: !450)
!1902 = !DILocation(line: 48, column: 6, scope: !1896)
!1903 = !DILocation(line: 52, column: 13, scope: !1896)
!1904 = !DILocation(line: 52, column: 16, scope: !1896)
!1905 = !DILocalVariable(name: "x", arg: 1, scope: !1906, file: !1897, line: 55, type: !450)
!1906 = distinct !DISubprogram(name: "math.pow", linkageName: "math.pow", scope: !1897, file: !1897, line: 55, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1907)
!1907 = !{!1905, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1908 = !DILocalVariable(name: "y", arg: 2, scope: !1906, file: !1897, line: 55, type: !450)
!1909 = !DILocalVariable(name: "yi", scope: !1906, file: !1897, line: 101, type: !450)
!1910 = !DILocalVariable(name: "yf", scope: !1906, file: !1897, line: 101, type: !450)
!1911 = !DILocalVariable(name: "a1", scope: !1906, file: !1897, line: 119, type: !450)
!1912 = !DILocalVariable(name: "ae", scope: !1906, file: !1897, line: 120, type: !1739)
!1913 = !DILocalVariable(name: "x1", scope: !1906, file: !1897, line: 135, type: !450)
!1914 = !DILocalVariable(name: "xe", scope: !1906, file: !1897, line: 135, type: !1739)
!1915 = !DILocalVariable(name: "i", scope: !1906, file: !1897, line: 136, type: !1699)
!1916 = !DILocation(line: 55, column: 6, scope: !1906, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 52, column: 12, scope: !1896)
!1918 = !DILocation(line: 57, column: 7, scope: !1906, inlinedAt: !1917)
!1919 = !DILocation(line: 57, column: 9, scope: !1906, inlinedAt: !1917)
!1920 = !DILocation(line: 0, scope: !1906, inlinedAt: !1917)
!1921 = !DILocation(line: 59, column: 7, scope: !1906, inlinedAt: !1917)
!1922 = !DILocation(line: 59, column: 9, scope: !1906, inlinedAt: !1917)
!1923 = !DILocation(line: 61, column: 13, scope: !1906, inlinedAt: !1917)
!1924 = !DILocation(line: 61, column: 25, scope: !1906, inlinedAt: !1917)
!1925 = !DILocation(line: 63, column: 7, scope: !1906, inlinedAt: !1917)
!1926 = !DILocation(line: 63, column: 9, scope: !1906, inlinedAt: !1917)
!1927 = !DILocation(line: 65, column: 8, scope: !1906, inlinedAt: !1917)
!1928 = !DILocation(line: 65, column: 10, scope: !1906, inlinedAt: !1917)
!1929 = !DILocation(line: 66, column: 15, scope: !1906, inlinedAt: !1917)
!1930 = !DILocalVariable(name: "x", arg: 1, scope: !1931, file: !1932, line: 8, type: !450)
!1931 = distinct !DISubprogram(name: "math.Signbit", linkageName: "math.Signbit", scope: !1932, file: !1932, line: 8, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1933)
!1932 = !DIFile(filename: "signbit.go", directory: "/usr/local/go/src/math")
!1933 = !{!1930}
!1934 = !DILocation(line: 8, column: 6, scope: !1931, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 66, column: 14, scope: !1906, inlinedAt: !1917)
!1936 = !DILocation(line: 9, column: 27, scope: !1931, inlinedAt: !1935)
!1937 = !DILocation(line: 35, column: 6, scope: !1789, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 9, column: 26, scope: !1931, inlinedAt: !1935)
!1939 = !DILocation(line: 35, column: 45, scope: !1789, inlinedAt: !1938)
!1940 = !DILocation(line: 9, column: 31, scope: !1931, inlinedAt: !1935)
!1941 = !DILocation(line: 66, column: 30, scope: !1906, inlinedAt: !1917)
!1942 = !DILocalVariable(name: "x", arg: 1, scope: !1943, file: !1897, line: 7, type: !450)
!1943 = distinct !DISubprogram(name: "math.isOddInt", linkageName: "math.isOddInt", scope: !1897, file: !1897, line: 7, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1944)
!1944 = !{!1942, !1945, !1946}
!1945 = !DILocalVariable(name: "xi", scope: !1943, file: !1897, line: 17, type: !450)
!1946 = !DILocalVariable(name: "xf", scope: !1943, file: !1897, line: 17, type: !450)
!1947 = !DILocation(line: 7, column: 6, scope: !1943, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 66, column: 29, scope: !1906, inlinedAt: !1917)
!1949 = !DILocation(line: 8, column: 9, scope: !1943, inlinedAt: !1948)
!1950 = !DILocalVariable(name: "x", arg: 1, scope: !1951, file: !1952, line: 13, type: !450)
!1951 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !1952, file: !1952, line: 13, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1953)
!1952 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!1953 = !{!1950}
!1954 = !DILocation(line: 13, column: 6, scope: !1951, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 8, column: 8, scope: !1943, inlinedAt: !1948)
!1956 = !DILocation(line: 14, column: 37, scope: !1951, inlinedAt: !1955)
!1957 = !DILocation(line: 17, column: 17, scope: !1943, inlinedAt: !1948)
!1958 = !DILocalVariable(name: "f", arg: 1, scope: !1959, file: !1960, line: 14, type: !450)
!1959 = distinct !DISubprogram(name: "math.Modf", linkageName: "math.Modf", scope: !1960, file: !1960, line: 14, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1961)
!1960 = !DIFile(filename: "modf.go", directory: "/usr/local/go/src/math")
!1961 = !{!1958, !1962, !1963}
!1962 = !DILocalVariable(name: "integer", scope: !1959, file: !1960, line: 14, type: !450)
!1963 = !DILocalVariable(name: "fractional", scope: !1959, file: !1960, line: 14, type: !450)
!1964 = !DILocation(line: 14, column: 6, scope: !1959, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 17, column: 16, scope: !1943, inlinedAt: !1948)
!1966 = !DILocation(line: 15, column: 18, scope: !1959, inlinedAt: !1965)
!1967 = !DILocalVariable(name: "x", arg: 1, scope: !1968, file: !1969, line: 61, type: !450)
!1968 = distinct !DISubprogram(name: "math.Trunc", linkageName: "math.Trunc", scope: !1969, file: !1969, line: 61, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1970)
!1969 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!1970 = !{!1967}
!1971 = !DILocation(line: 61, column: 6, scope: !1968, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 15, column: 17, scope: !1959, inlinedAt: !1965)
!1973 = !DILocation(line: 15, column: 2, scope: !1959, inlinedAt: !1965)
!1974 = !DILocation(line: 16, column: 24, scope: !1959, inlinedAt: !1965)
!1975 = !DILocation(line: 16, column: 26, scope: !1959, inlinedAt: !1965)
!1976 = !DILocation(line: 16, column: 35, scope: !1959, inlinedAt: !1965)
!1977 = !DILocation(line: 9, column: 6, scope: !1805, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 16, column: 23, scope: !1959, inlinedAt: !1965)
!1979 = !DILocation(line: 11, column: 37, scope: !1805, inlinedAt: !1978)
!1980 = !DILocation(line: 11, column: 63, scope: !1805, inlinedAt: !1978)
!1981 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 11, column: 24, scope: !1805, inlinedAt: !1978)
!1983 = !DILocation(line: 16, column: 2, scope: !1959, inlinedAt: !1965)
!1984 = !DILocation(line: 17, column: 2, scope: !1943, inlinedAt: !1948)
!1985 = !DILocation(line: 17, column: 6, scope: !1943, inlinedAt: !1948)
!1986 = !DILocation(line: 18, column: 9, scope: !1943, inlinedAt: !1948)
!1987 = !DILocation(line: 18, column: 12, scope: !1943, inlinedAt: !1948)
!1988 = !DILocation(line: 0, scope: !1943, inlinedAt: !1948)
!1989 = !DILocation(line: 18, column: 26, scope: !1943, inlinedAt: !1948)
!1990 = !DILocation(line: 18, column: 25, scope: !1943, inlinedAt: !1948)
!1991 = !DILocation(line: 18, column: 29, scope: !1943, inlinedAt: !1948)
!1992 = !DILocation(line: 18, column: 32, scope: !1943, inlinedAt: !1948)
!1993 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 27, column: 24, scope: !1995, inlinedAt: !2001)
!1995 = distinct !DISubprogram(name: "math.Inf", linkageName: "math.Inf", scope: !1762, file: !1762, line: 20, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1739}
!1998 = !{!1999, !2000}
!1999 = !DILocalVariable(name: "sign", arg: 1, scope: !1995, file: !1762, line: 20, type: !1739)
!2000 = !DILocalVariable(name: "v", scope: !1995, file: !1762, line: 21, type: !11)
!2001 = distinct !DILocation(line: 69, column: 14, scope: !1906, inlinedAt: !1917)
!2002 = !DILocation(line: 69, column: 4, scope: !1906, inlinedAt: !1917)
!2003 = !DILocation(line: 70, column: 8, scope: !1906, inlinedAt: !1917)
!2004 = !DILocation(line: 70, column: 10, scope: !1906, inlinedAt: !1917)
!2005 = !DILocation(line: 71, column: 15, scope: !1906, inlinedAt: !1917)
!2006 = !DILocation(line: 8, column: 6, scope: !1931, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 71, column: 14, scope: !1906, inlinedAt: !1917)
!2008 = !DILocation(line: 9, column: 27, scope: !1931, inlinedAt: !2007)
!2009 = !DILocation(line: 35, column: 6, scope: !1789, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 9, column: 26, scope: !1931, inlinedAt: !2007)
!2011 = !DILocation(line: 35, column: 45, scope: !1789, inlinedAt: !2010)
!2012 = !DILocation(line: 9, column: 31, scope: !1931, inlinedAt: !2007)
!2013 = !DILocation(line: 71, column: 30, scope: !1906, inlinedAt: !1917)
!2014 = !DILocation(line: 7, column: 6, scope: !1943, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 71, column: 29, scope: !1906, inlinedAt: !1917)
!2016 = !DILocation(line: 8, column: 9, scope: !1943, inlinedAt: !2015)
!2017 = !DILocation(line: 13, column: 6, scope: !1951, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 8, column: 8, scope: !1943, inlinedAt: !2015)
!2019 = !DILocation(line: 14, column: 37, scope: !1951, inlinedAt: !2018)
!2020 = !DILocation(line: 17, column: 17, scope: !1943, inlinedAt: !2015)
!2021 = !DILocation(line: 14, column: 6, scope: !1959, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 17, column: 16, scope: !1943, inlinedAt: !2015)
!2023 = !DILocation(line: 15, column: 18, scope: !1959, inlinedAt: !2022)
!2024 = !DILocation(line: 61, column: 6, scope: !1968, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 15, column: 17, scope: !1959, inlinedAt: !2022)
!2026 = !DILocation(line: 15, column: 2, scope: !1959, inlinedAt: !2022)
!2027 = !DILocation(line: 16, column: 24, scope: !1959, inlinedAt: !2022)
!2028 = !DILocation(line: 16, column: 26, scope: !1959, inlinedAt: !2022)
!2029 = !DILocation(line: 16, column: 35, scope: !1959, inlinedAt: !2022)
!2030 = !DILocation(line: 9, column: 6, scope: !1805, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 16, column: 23, scope: !1959, inlinedAt: !2022)
!2032 = !DILocation(line: 11, column: 37, scope: !1805, inlinedAt: !2031)
!2033 = !DILocation(line: 11, column: 63, scope: !1805, inlinedAt: !2031)
!2034 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 11, column: 24, scope: !1805, inlinedAt: !2031)
!2036 = !DILocation(line: 16, column: 2, scope: !1959, inlinedAt: !2022)
!2037 = !DILocation(line: 17, column: 2, scope: !1943, inlinedAt: !2015)
!2038 = !DILocation(line: 17, column: 6, scope: !1943, inlinedAt: !2015)
!2039 = !DILocation(line: 18, column: 9, scope: !1943, inlinedAt: !2015)
!2040 = !DILocation(line: 18, column: 12, scope: !1943, inlinedAt: !2015)
!2041 = !DILocation(line: 0, scope: !1943, inlinedAt: !2015)
!2042 = !DILocation(line: 18, column: 26, scope: !1943, inlinedAt: !2015)
!2043 = !DILocation(line: 18, column: 25, scope: !1943, inlinedAt: !2015)
!2044 = !DILocation(line: 18, column: 29, scope: !1943, inlinedAt: !2015)
!2045 = !DILocation(line: 18, column: 32, scope: !1943, inlinedAt: !2015)
!2046 = !DILocation(line: 74, column: 4, scope: !1906, inlinedAt: !1917)
!2047 = !DILocation(line: 101, column: 21, scope: !1906, inlinedAt: !1917)
!2048 = !DILocation(line: 13, column: 6, scope: !1951, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 101, column: 20, scope: !1906, inlinedAt: !1917)
!2050 = !DILocation(line: 14, column: 37, scope: !1951, inlinedAt: !2049)
!2051 = !DILocation(line: 14, column: 40, scope: !1951, inlinedAt: !2049)
!2052 = !DILocation(line: 14, column: 6, scope: !1959, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 101, column: 16, scope: !1906, inlinedAt: !1917)
!2054 = !DILocation(line: 15, column: 18, scope: !1959, inlinedAt: !2053)
!2055 = !DILocation(line: 61, column: 6, scope: !1968, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 15, column: 17, scope: !1959, inlinedAt: !2053)
!2057 = !DILocation(line: 15, column: 2, scope: !1959, inlinedAt: !2053)
!2058 = !DILocation(line: 16, column: 24, scope: !1959, inlinedAt: !2053)
!2059 = !DILocation(line: 16, column: 26, scope: !1959, inlinedAt: !2053)
!2060 = !DILocation(line: 16, column: 25, scope: !1959, inlinedAt: !2053)
!2061 = !DILocation(line: 16, column: 35, scope: !1959, inlinedAt: !2053)
!2062 = !DILocation(line: 9, column: 6, scope: !1805, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 16, column: 23, scope: !1959, inlinedAt: !2053)
!2064 = !DILocation(line: 11, column: 37, scope: !1805, inlinedAt: !2063)
!2065 = !DILocation(line: 11, column: 63, scope: !1805, inlinedAt: !2063)
!2066 = !DILocation(line: 41, column: 6, scope: !1816, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 11, column: 24, scope: !1805, inlinedAt: !2063)
!2068 = !DILocation(line: 41, column: 49, scope: !1816, inlinedAt: !2067)
!2069 = !DILocation(line: 16, column: 2, scope: !1959, inlinedAt: !2053)
!2070 = !DILocation(line: 101, column: 2, scope: !1906, inlinedAt: !1917)
!2071 = !DILocation(line: 101, column: 6, scope: !1906, inlinedAt: !1917)
!2072 = !DILocation(line: 102, column: 5, scope: !1906, inlinedAt: !1917)
!2073 = !DILocation(line: 102, column: 8, scope: !1906, inlinedAt: !1917)
!2074 = !DILocation(line: 102, column: 16, scope: !1906, inlinedAt: !1917)
!2075 = !DILocation(line: 105, column: 5, scope: !1906, inlinedAt: !1917)
!2076 = !DILocation(line: 105, column: 8, scope: !1906, inlinedAt: !1917)
!2077 = !DILocation(line: 109, column: 8, scope: !1906, inlinedAt: !1917)
!2078 = !DILocation(line: 109, column: 10, scope: !1906, inlinedAt: !1917)
!2079 = !DILocation(line: 111, column: 13, scope: !1906, inlinedAt: !1917)
!2080 = !DILocation(line: 13, column: 6, scope: !1951, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 111, column: 12, scope: !1906, inlinedAt: !1917)
!2082 = !DILocation(line: 14, column: 37, scope: !1951, inlinedAt: !2081)
!2083 = !DILocation(line: 14, column: 40, scope: !1951, inlinedAt: !2081)
!2084 = !DILocation(line: 111, column: 16, scope: !1906, inlinedAt: !1917)
!2085 = !DILocation(line: 111, column: 25, scope: !1906, inlinedAt: !1917)
!2086 = !DILocation(line: 111, column: 21, scope: !1906, inlinedAt: !1917)
!2087 = !DILocation(line: 119, column: 2, scope: !1906, inlinedAt: !1917)
!2088 = !DILocation(line: 120, column: 2, scope: !1906, inlinedAt: !1917)
!2089 = !DILocation(line: 123, column: 5, scope: !1906, inlinedAt: !1917)
!2090 = !DILocation(line: 124, column: 6, scope: !1906, inlinedAt: !1917)
!2091 = !DILocation(line: 124, column: 9, scope: !1906, inlinedAt: !1917)
!2092 = !DILocation(line: 128, column: 12, scope: !1906, inlinedAt: !1917)
!2093 = !DILocation(line: 128, column: 21, scope: !1906, inlinedAt: !1917)
!2094 = !DILocalVariable(name: "x", arg: 1, scope: !2095, file: !2096, line: 81, type: !450)
!2095 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !2096, file: !2096, line: 81, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2097)
!2096 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!2097 = !{!2094}
!2098 = !DILocation(line: 81, column: 6, scope: !2095, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 128, column: 20, scope: !1906, inlinedAt: !1917)
!2100 = !DILocation(line: 128, column: 15, scope: !1906, inlinedAt: !1917)
!2101 = !DILocalVariable(name: "x", arg: 1, scope: !2102, file: !2103, line: 16, type: !450)
!2102 = distinct !DISubprogram(name: "math.Exp", linkageName: "math.Exp", scope: !2103, file: !2103, line: 16, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2104)
!2103 = !DIFile(filename: "exp.go", directory: "/usr/local/go/src/math")
!2104 = !{!2101}
!2105 = !DILocation(line: 16, column: 6, scope: !2102, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 128, column: 11, scope: !1906, inlinedAt: !1917)
!2107 = !DILocation(line: 128, column: 3, scope: !1906, inlinedAt: !1917)
!2108 = !DILocation(line: 135, column: 18, scope: !1906, inlinedAt: !1917)
!2109 = !DILocation(line: 135, column: 2, scope: !1906, inlinedAt: !1917)
!2110 = !DILocation(line: 135, column: 6, scope: !1906, inlinedAt: !1917)
!2111 = !DILocation(line: 136, column: 17, scope: !1906, inlinedAt: !1917)
!2112 = !DILocation(line: 136, column: 16, scope: !1906, inlinedAt: !1917)
!2113 = !DILocation(line: 136, column: 6, scope: !1906, inlinedAt: !1917)
!2114 = !DILocation(line: 136, column: 24, scope: !1906, inlinedAt: !1917)
!2115 = !DILocation(line: 135, column: 17, scope: !1906, inlinedAt: !1917)
!2116 = !DILocation(line: 136, column: 22, scope: !1906, inlinedAt: !1917)
!2117 = !DILocation(line: 137, column: 6, scope: !1906, inlinedAt: !1917)
!2118 = !DILocation(line: 137, column: 29, scope: !1906, inlinedAt: !1917)
!2119 = !DILocation(line: 143, column: 10, scope: !1906, inlinedAt: !1917)
!2120 = !DILocation(line: 143, column: 4, scope: !1906, inlinedAt: !1917)
!2121 = !DILocation(line: 146, column: 6, scope: !1906, inlinedAt: !1917)
!2122 = !DILocation(line: 146, column: 7, scope: !1906, inlinedAt: !1917)
!2123 = !DILocation(line: 146, column: 10, scope: !1906, inlinedAt: !1917)
!2124 = !DILocation(line: 150, column: 9, scope: !1906, inlinedAt: !1917)
!2125 = !DILocation(line: 150, column: 3, scope: !1906, inlinedAt: !1917)
!2126 = !DILocation(line: 151, column: 3, scope: !1906, inlinedAt: !1917)
!2127 = !DILocation(line: 152, column: 9, scope: !1906, inlinedAt: !1917)
!2128 = !DILocation(line: 136, column: 30, scope: !1906, inlinedAt: !1917)
!2129 = !DILocation(line: 161, column: 5, scope: !1906, inlinedAt: !1917)
!2130 = !DILocation(line: 161, column: 7, scope: !1906, inlinedAt: !1917)
!2131 = !DILocation(line: 162, column: 12, scope: !1906, inlinedAt: !1917)
!2132 = !DILocation(line: 162, column: 10, scope: !1906, inlinedAt: !1917)
!2133 = !DILocation(line: 162, column: 3, scope: !1906, inlinedAt: !1917)
!2134 = !DILocation(line: 163, column: 9, scope: !1906, inlinedAt: !1917)
!2135 = !DILocation(line: 163, column: 8, scope: !1906, inlinedAt: !1917)
!2136 = !DILocation(line: 163, column: 3, scope: !1906, inlinedAt: !1917)
!2137 = !DILocation(line: 165, column: 15, scope: !1906, inlinedAt: !1917)
!2138 = !DILocation(line: 165, column: 19, scope: !1906, inlinedAt: !1917)
!2139 = !DILocation(line: 165, column: 14, scope: !1906, inlinedAt: !1917)
!2140 = !DILocation(line: 165, column: 2, scope: !1906, inlinedAt: !1917)
!2141 = !DILocation(line: 76, column: 13, scope: !1906, inlinedAt: !1917)
!2142 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 76, column: 12, scope: !1906, inlinedAt: !1917)
!2144 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !2143)
!2145 = !DILocation(line: 0, scope: !1761, inlinedAt: !2143)
!2146 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !2143)
!2147 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !2143)
!2148 = !DILocation(line: 78, column: 8, scope: !1906, inlinedAt: !1917)
!2149 = !DILocation(line: 78, column: 10, scope: !1906, inlinedAt: !1917)
!2150 = !DILocation(line: 80, column: 13, scope: !1906, inlinedAt: !1917)
!2151 = !DILocation(line: 13, column: 6, scope: !1951, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 80, column: 12, scope: !1906, inlinedAt: !1917)
!2153 = !DILocation(line: 14, column: 37, scope: !1951, inlinedAt: !2152)
!2154 = !DILocation(line: 14, column: 40, scope: !1951, inlinedAt: !2152)
!2155 = !DILocation(line: 80, column: 30, scope: !1906, inlinedAt: !1917)
!2156 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 80, column: 29, scope: !1906, inlinedAt: !1917)
!2158 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !2157)
!2159 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !2157)
!2160 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !2157)
!2161 = !DILocation(line: 80, column: 21, scope: !1906, inlinedAt: !1917)
!2162 = !DILocation(line: 85, column: 13, scope: !1906, inlinedAt: !1917)
!2163 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 85, column: 12, scope: !1906, inlinedAt: !1917)
!2165 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !2164)
!2166 = !DILocation(line: 0, scope: !1761, inlinedAt: !2164)
!2167 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !2164)
!2168 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !2164)
!2169 = !DILocation(line: 86, column: 12, scope: !1906, inlinedAt: !1917)
!2170 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 86, column: 11, scope: !1906, inlinedAt: !1917)
!2172 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !2171)
!2173 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !2171)
!2174 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !2171)
!2175 = !DILocation(line: 87, column: 17, scope: !1906, inlinedAt: !1917)
!2176 = !DILocation(line: 87, column: 16, scope: !1906, inlinedAt: !1917)
!2177 = !DILocation(line: 87, column: 21, scope: !1906, inlinedAt: !1917)
!2178 = !DILocation(line: 87, column: 20, scope: !1906, inlinedAt: !1917)
!2179 = !DILocation(line: 87, column: 14, scope: !1906, inlinedAt: !1917)
!2180 = !DILocation(line: 87, column: 4, scope: !1906, inlinedAt: !1917)
!2181 = !DILocation(line: 90, column: 8, scope: !1906, inlinedAt: !1917)
!2182 = !DILocation(line: 90, column: 10, scope: !1906, inlinedAt: !1917)
!2183 = !DILocation(line: 92, column: 8, scope: !1906, inlinedAt: !1917)
!2184 = !DILocation(line: 92, column: 10, scope: !1906, inlinedAt: !1917)
!2185 = !DILocation(line: 95, column: 7, scope: !1906, inlinedAt: !1917)
!2186 = !DILocation(line: 95, column: 9, scope: !1906, inlinedAt: !1917)
!2187 = !DILocation(line: 96, column: 15, scope: !1906, inlinedAt: !1917)
!2188 = !DILocalVariable(name: "x", arg: 1, scope: !2189, file: !2190, line: 93, type: !450)
!2189 = distinct !DISubprogram(name: "math.Sqrt", linkageName: "math.Sqrt", scope: !2190, file: !2190, line: 93, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2191)
!2190 = !DIFile(filename: "sqrt.go", directory: "/usr/local/go/src/math")
!2191 = !{!2188}
!2192 = !DILocation(line: 93, column: 6, scope: !2189, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 96, column: 14, scope: !1906, inlinedAt: !1917)
!2194 = !DILocation(line: 96, column: 3, scope: !1906, inlinedAt: !1917)
!2195 = !DILocation(line: 97, column: 7, scope: !1906, inlinedAt: !1917)
!2196 = !DILocation(line: 97, column: 9, scope: !1906, inlinedAt: !1917)
!2197 = !DILocation(line: 98, column: 19, scope: !1906, inlinedAt: !1917)
!2198 = !DILocation(line: 93, column: 6, scope: !2189, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 98, column: 18, scope: !1906, inlinedAt: !1917)
!2200 = !DILocation(line: 98, column: 12, scope: !1906, inlinedAt: !1917)
!2201 = !DILocation(line: 98, column: 3, scope: !1906, inlinedAt: !1917)
!2202 = !DILocation(line: 52, column: 2, scope: !1896)
!2203 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2207)
!2204 = !DISubroutineType(cc: DW_CC_nocall, types: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!2207 = !{!2208, !2209}
!2208 = !DILocalVariable(name: "m", arg: 1, scope: !2203, file: !54, line: 49, type: !2206)
!2209 = !DILocalVariable(name: "old", scope: !2203, file: !54, line: 50, type: !43)
!2210 = !DILocation(line: 49, column: 17, scope: !2203)
!2211 = !DILocation(line: 50, column: 12, scope: !2203)
!2212 = !DILocation(line: 50, column: 14, scope: !2203)
!2213 = !DILocalVariable(name: "x", arg: 1, scope: !2214, file: !2215, line: 153, type: !2218)
!2214 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !2215, file: !2215, line: 153, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2219)
!2215 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!2218, !43}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!2219 = !{!2213, !2220}
!2220 = !DILocalVariable(name: "new", arg: 2, scope: !2214, file: !2215, line: 153, type: !43)
!2221 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 50, column: 24, scope: !2203)
!2223 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !2222)
!2224 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !2222)
!2225 = !DILocalVariable(name: "addr", arg: 1, scope: !2226, file: !2227, line: 77, type: !2230)
!2226 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !2227, file: !2227, line: 77, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2231)
!2227 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2230, !43}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!2231 = !{!2225, !2232}
!2232 = !DILocalVariable(name: "new", arg: 2, scope: !2226, file: !2227, line: 77, type: !43)
!2233 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !2222)
!2235 = !DILocation(line: 50, column: 5, scope: !2203)
!2236 = !DILocation(line: 50, column: 29, scope: !2203)
!2237 = !DILocation(line: 0, scope: !2203)
!2238 = !DILocation(line: 52, column: 8, scope: !2203)
!2239 = !DILocation(line: 55, column: 3, scope: !2203)
!2240 = !DILocalVariable(name: "f", arg: 1, scope: !2241, file: !2242, line: 53, type: !2245)
!2241 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !2242, file: !2242, line: 53, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2246)
!2242 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!2246 = !{!2240}
!2247 = !DILocation(line: 53, column: 17, scope: !2241, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 55, column: 15, scope: !2203)
!2249 = !DILocation(line: 54, column: 46, scope: !2241, inlinedAt: !2248)
!2250 = !DILocation(line: 54, column: 19, scope: !2241, inlinedAt: !2248)
!2251 = !DILocation(line: 57, column: 2, scope: !2203)
!2252 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!3}
!2255 = !{!2256, !2257, !2258, !2260}
!2256 = !DILocalVariable(name: "t", arg: 1, scope: !2252, file: !2, line: 125, type: !3)
!2257 = !DILocalVariable(name: "found", scope: !2252, file: !2, line: 133, type: !47)
!2258 = !DILocalVariable(name: "q", scope: !2252, file: !2, line: 134, type: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!2260 = !DILocalVariable(name: "otherGoroutines", scope: !2252, file: !2, line: 99, type: !43)
!2261 = !DILocation(line: 125, column: 6, scope: !2252)
!2262 = !DILocalVariable(name: "m", arg: 1, scope: !2263, file: !54, line: 31, type: !2206)
!2263 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !2264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2265)
!2264 = !DISubroutineType(types: !2205)
!2265 = !{!2262}
!2266 = !DILocation(line: 31, column: 17, scope: !2263, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 132, column: 21, scope: !2252)
!2268 = !DILocation(line: 33, column: 5, scope: !2263, inlinedAt: !2267)
!2269 = !DILocalVariable(name: "x", arg: 1, scope: !2270, file: !2215, line: 156, type: !2218)
!2270 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !2215, file: !2215, line: 156, type: !2271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2218, !43, !43}
!2273 = !{!2269, !2274, !2275}
!2274 = !DILocalVariable(name: "old", arg: 2, scope: !2270, file: !2215, line: 156, type: !43)
!2275 = !DILocalVariable(name: "new", arg: 3, scope: !2270, file: !2215, line: 156, type: !43)
!2276 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 33, column: 27, scope: !2263, inlinedAt: !2267)
!2278 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !2277)
!2279 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !2277)
!2280 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !2277)
!2281 = !DILocalVariable(name: "addr", arg: 1, scope: !2282, file: !2227, line: 99, type: !2230)
!2282 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !2227, file: !2227, line: 99, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2230, !43, !43}
!2285 = !{!2281, !2286, !2287}
!2286 = !DILocalVariable(name: "old", arg: 2, scope: !2282, file: !2227, line: 99, type: !43)
!2287 = !DILocalVariable(name: "new", arg: 3, scope: !2282, file: !2227, line: 99, type: !43)
!2288 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !2277)
!2290 = !DILocation(line: 0, scope: !2263, inlinedAt: !2267)
!2291 = !DILocation(line: 43, column: 6, scope: !2263, inlinedAt: !2267)
!2292 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 43, column: 18, scope: !2263, inlinedAt: !2267)
!2294 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !2293)
!2295 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !2293)
!2296 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !2293)
!2298 = !DILocation(line: 43, column: 22, scope: !2263, inlinedAt: !2267)
!2299 = !DILocation(line: 45, column: 3, scope: !2263, inlinedAt: !2267)
!2300 = !DILocalVariable(name: "f", arg: 1, scope: !2301, file: !2242, line: 25, type: !2245)
!2301 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !2242, file: !2242, line: 25, type: !2302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!2245, !43}
!2304 = !{!2300, !2305}
!2305 = !DILocalVariable(name: "cmp", arg: 2, scope: !2301, file: !2242, line: 25, type: !43)
!2306 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 45, column: 15, scope: !2263, inlinedAt: !2267)
!2308 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !2307)
!2309 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !2307)
!2310 = !DILocation(line: 133, column: 2, scope: !2252)
!2311 = !DILocation(line: 134, column: 6, scope: !2252)
!2312 = !DILocation(line: 134, column: 25, scope: !2252)
!2313 = !DILocation(line: 134, column: 28, scope: !2252)
!2314 = !DILocation(line: 0, scope: !2252)
!2315 = !DILocation(line: 134, column: 52, scope: !2252)
!2316 = !DILocation(line: 134, column: 36, scope: !2252)
!2317 = !DILocation(line: 134, column: 26, scope: !2252)
!2318 = !DILocation(line: 135, column: 7, scope: !2252)
!2319 = !DILocation(line: 135, column: 12, scope: !2252)
!2320 = !DILocation(line: 135, column: 9, scope: !2252)
!2321 = !DILocation(line: 134, column: 43, scope: !2252)
!2322 = !DILocation(line: 136, column: 5, scope: !2252)
!2323 = !DILocation(line: 136, column: 9, scope: !2252)
!2324 = !DILocation(line: 136, column: 17, scope: !2252)
!2325 = !DILocation(line: 136, column: 4, scope: !2252)
!2326 = !DILocation(line: 137, column: 4, scope: !2252)
!2327 = !DILocation(line: 141, column: 2, scope: !2252)
!2328 = !DILocation(line: 49, column: 17, scope: !2203, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 142, column: 23, scope: !2252)
!2330 = !DILocation(line: 50, column: 12, scope: !2203, inlinedAt: !2329)
!2331 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 50, column: 24, scope: !2203, inlinedAt: !2329)
!2333 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !2332)
!2334 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !2332)
!2335 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !2332)
!2337 = !DILocation(line: 50, column: 5, scope: !2203, inlinedAt: !2329)
!2338 = !DILocation(line: 50, column: 29, scope: !2203, inlinedAt: !2329)
!2339 = !DILocation(line: 0, scope: !2203, inlinedAt: !2329)
!2340 = !DILocation(line: 52, column: 8, scope: !2203, inlinedAt: !2329)
!2341 = !DILocation(line: 55, column: 3, scope: !2203, inlinedAt: !2329)
!2342 = !DILocation(line: 53, column: 17, scope: !2241, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 55, column: 15, scope: !2203, inlinedAt: !2329)
!2344 = !DILocation(line: 54, column: 46, scope: !2241, inlinedAt: !2343)
!2345 = !DILocation(line: 54, column: 19, scope: !2241, inlinedAt: !2343)
!2346 = !DILocation(line: 145, column: 6, scope: !2252)
!2347 = !DILocation(line: 148, column: 2, scope: !2252)
!2348 = !DILocation(line: 142, column: 23, scope: !2252)
!2349 = !DILocation(line: 146, column: 15, scope: !2252)
!2350 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!60}
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "sig", arg: 1, scope: !2350, file: !2, line: 266, type: !60)
!2355 = !DILocalVariable(name: "stackBottom", scope: !2350, file: !2, line: 28, type: !21)
!2356 = !DILocation(line: 266, column: 6, scope: !2350)
!2357 = !DILocation(line: 62, column: 34, scope: !2358, inlinedAt: !2362)
!2358 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2360)
!2359 = !DISubroutineType(types: !15)
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "t", scope: !2358, file: !2, line: 62, type: !3)
!2362 = distinct !DILocation(line: 268, column: 9, scope: !2350)
!2363 = !DILocation(line: 62, column: 2, scope: !2358, inlinedAt: !2362)
!2364 = !DILocation(line: 63, column: 5, scope: !2358, inlinedAt: !2362)
!2365 = !DILocation(line: 63, column: 7, scope: !2358, inlinedAt: !2362)
!2366 = !DILocation(line: 0, scope: !2358, inlinedAt: !2362)
!2367 = !DILocation(line: 64, column: 15, scope: !2358, inlinedAt: !2362)
!2368 = !DILocation(line: 66, column: 9, scope: !2358, inlinedAt: !2362)
!2369 = !DILocation(line: 58, column: 6, scope: !2370, inlinedAt: !2371)
!2370 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1525, file: !1525, line: 58, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2371 = distinct !DILocation(line: 268, column: 49, scope: !2350)
!2372 = !DILocation(line: 268, column: 39, scope: !2350)
!2373 = !DILocation(line: 268, column: 18, scope: !2350)
!2374 = !DILocalVariable(name: "wg", arg: 1, scope: !2375, file: !2, line: 163, type: !2378)
!2375 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2379)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!2379 = !{!2374}
!2380 = !DILocation(line: 163, column: 22, scope: !2375, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 271, column: 20, scope: !2350)
!2382 = !DILocation(line: 164, column: 5, scope: !2375, inlinedAt: !2381)
!2383 = !DILocalVariable(name: "x", arg: 1, scope: !2384, file: !2215, line: 161, type: !2218)
!2384 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !2215, file: !2215, line: 161, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2385)
!2385 = !{!2383, !2386}
!2386 = !DILocalVariable(name: "delta", arg: 2, scope: !2384, file: !2215, line: 161, type: !43)
!2387 = !DILocation(line: 161, column: 18, scope: !2384, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 164, column: 13, scope: !2375, inlinedAt: !2381)
!2389 = !DILocation(line: 161, column: 69, scope: !2384, inlinedAt: !2388)
!2390 = !DILocation(line: 161, column: 74, scope: !2384, inlinedAt: !2388)
!2391 = !DILocalVariable(name: "addr", arg: 1, scope: !2392, file: !2227, line: 123, type: !2230)
!2392 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !2227, file: !2227, line: 123, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2393)
!2393 = !{!2391, !2394}
!2394 = !DILocalVariable(name: "delta", arg: 2, scope: !2392, file: !2227, line: 123, type: !43)
!2395 = !DILocation(line: 123, column: 6, scope: !2392, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 161, column: 67, scope: !2384, inlinedAt: !2388)
!2397 = !DILocation(line: 164, column: 26, scope: !2375, inlinedAt: !2381)
!2398 = !DILocation(line: 0, scope: !2375, inlinedAt: !2381)
!2399 = !DILocation(line: 165, column: 3, scope: !2375, inlinedAt: !2381)
!2400 = !DILocalVariable(name: "f", arg: 1, scope: !2401, file: !2242, line: 58, type: !2245)
!2401 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !2242, file: !2242, line: 58, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2402)
!2402 = !{!2400}
!2403 = !DILocation(line: 58, column: 17, scope: !2401, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 165, column: 15, scope: !2375, inlinedAt: !2381)
!2405 = !DILocation(line: 59, column: 50, scope: !2401, inlinedAt: !2404)
!2406 = !DILocation(line: 59, column: 23, scope: !2401, inlinedAt: !2404)
!2407 = !DILocalVariable(name: "x", arg: 1, scope: !2408, file: !2215, line: 147, type: !2218)
!2408 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !2215, file: !2215, line: 147, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!2218}
!2411 = !{!2407}
!2412 = !DILocation(line: 147, column: 18, scope: !2408, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 274, column: 18, scope: !2350)
!2414 = !DILocation(line: 147, column: 53, scope: !2408, inlinedAt: !2413)
!2415 = !DILocalVariable(name: "addr", arg: 1, scope: !2416, file: !2227, line: 183, type: !2230)
!2416 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !2227, file: !2227, line: 183, type: !2417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!2230}
!2419 = !{!2415}
!2420 = !DILocation(line: 183, column: 6, scope: !2416, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 147, column: 51, scope: !2408, inlinedAt: !2413)
!2422 = !DILocation(line: 274, column: 21, scope: !2350)
!2423 = !DILocation(line: 0, scope: !2350)
!2424 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 275, column: 15, scope: !2350)
!2426 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !2425)
!2427 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !2425)
!2428 = !DILocation(line: 163, column: 22, scope: !2375, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 279, column: 20, scope: !2350)
!2430 = !DILocation(line: 164, column: 5, scope: !2375, inlinedAt: !2429)
!2431 = !DILocation(line: 161, column: 18, scope: !2384, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 164, column: 13, scope: !2375, inlinedAt: !2429)
!2433 = !DILocation(line: 161, column: 69, scope: !2384, inlinedAt: !2432)
!2434 = !DILocation(line: 161, column: 74, scope: !2384, inlinedAt: !2432)
!2435 = !DILocation(line: 123, column: 6, scope: !2392, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 161, column: 67, scope: !2384, inlinedAt: !2432)
!2437 = !DILocation(line: 164, column: 26, scope: !2375, inlinedAt: !2429)
!2438 = !DILocation(line: 0, scope: !2375, inlinedAt: !2429)
!2439 = !DILocation(line: 165, column: 3, scope: !2375, inlinedAt: !2429)
!2440 = !DILocation(line: 58, column: 17, scope: !2401, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 165, column: 15, scope: !2375, inlinedAt: !2429)
!2442 = !DILocation(line: 59, column: 50, scope: !2401, inlinedAt: !2441)
!2443 = !DILocation(line: 59, column: 23, scope: !2401, inlinedAt: !2441)
!2444 = !DILocation(line: 280, column: 2, scope: !2350)
!2445 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !102, file: !102, line: 85, type: !2446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2448)
!2446 = !DISubroutineType(cc: DW_CC_nocall, types: !2447)
!2447 = !{!291}
!2448 = !{!2449}
!2449 = !DILocalVariable(name: "msg", arg: 1, scope: !2445, file: !102, line: 85, type: !291)
!2450 = !DILocation(line: 85, column: 6, scope: !2445)
!2451 = !DILocation(line: 88, column: 30, scope: !2445)
!2452 = !DILocation(line: 88, column: 35, scope: !2445)
!2453 = !DILocation(line: 88, column: 16, scope: !2445)
!2454 = !DILocation(line: 89, column: 2, scope: !2445)
!2455 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !102, file: !102, line: 91, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2458)
!2456 = !DISubroutineType(cc: DW_CC_nocall, types: !2457)
!2457 = !{!9, !291}
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "addr", arg: 1, scope: !2455, file: !102, line: 91, type: !9)
!2460 = !DILocalVariable(name: "msg", arg: 2, scope: !2455, file: !102, line: 91, type: !291)
!2461 = !DILocation(line: 91, column: 6, scope: !2455)
!2462 = !DILocation(line: 99, column: 14, scope: !2455)
!2463 = !DILocation(line: 100, column: 20, scope: !2455)
!2464 = !DILocation(line: 100, column: 19, scope: !2455)
!2465 = !DILocation(line: 100, column: 26, scope: !2455)
!2466 = !DILocation(line: 100, column: 11, scope: !2455)
!2467 = !DILocation(line: 101, column: 14, scope: !2455)
!2468 = !DILocation(line: 105, column: 14, scope: !2455)
!2469 = !DILocation(line: 105, column: 13, scope: !2455)
!2470 = !DILocation(line: 106, column: 9, scope: !2455)
!2471 = !DILocation(line: 107, column: 7, scope: !2455)
!2472 = !DILocation(line: 108, column: 2, scope: !2455)
!2473 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !2446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2474)
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "s", arg: 1, scope: !2473, file: !1602, line: 12, type: !291)
!2476 = !DILocalVariable(name: "i", scope: !2473, file: !1602, line: 13, type: !1739)
!2477 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2483)
!2478 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !123, file: !123, line: 214, type: !2479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!155}
!2481 = !{!2482}
!2482 = !DILocalVariable(name: "c", arg: 1, scope: !2478, file: !123, line: 214, type: !155)
!2483 = distinct !DILocation(line: 14, column: 10, scope: !2473)
!2484 = !DILocation(line: 12, column: 6, scope: !2473)
!2485 = !DILocation(line: 13, column: 6, scope: !2473)
!2486 = !DILocation(line: 13, column: 22, scope: !2473)
!2487 = !DILocation(line: 0, scope: !2473)
!2488 = !DILocation(line: 14, column: 13, scope: !2473)
!2489 = !DILocation(line: 14, column: 11, scope: !2473)
!2490 = !DILocation(line: 14, column: 12, scope: !2473)
!2491 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2483)
!2492 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2483)
!2493 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2483)
!2494 = !DILocation(line: 13, column: 26, scope: !2473)
!2495 = !DILocation(line: 13, column: 14, scope: !2473)
!2496 = !DILocation(line: 13, column: 16, scope: !2473)
!2497 = !DILocation(line: 16, column: 2, scope: !2473)
!2498 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2501)
!2499 = !DISubroutineType(cc: DW_CC_nocall, types: !2500)
!2500 = !{!21}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "ptr", arg: 1, scope: !2498, file: !1602, line: 371, type: !21)
!2503 = !DILocalVariable(name: "i", scope: !2498, file: !1602, line: 378, type: !1739)
!2504 = !DILocalVariable(name: "nibble", scope: !2498, file: !1602, line: 379, type: !155)
!2505 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 383, column: 11, scope: !2498)
!2507 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 381, column: 11, scope: !2498)
!2509 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 377, column: 9, scope: !2498)
!2511 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 376, column: 9, scope: !2498)
!2513 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 373, column: 14, scope: !2498)
!2516 = !DILocation(line: 371, column: 6, scope: !2498)
!2517 = !DILocation(line: 372, column: 5, scope: !2498)
!2518 = !DILocation(line: 372, column: 9, scope: !2498)
!2519 = !DILocation(line: 0, scope: !2498)
!2520 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !2515)
!2521 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !2515)
!2522 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2514)
!2523 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2514)
!2524 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2514)
!2525 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !2515)
!2526 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2512)
!2527 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !2512)
!2528 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2512)
!2529 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2512)
!2530 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2510)
!2531 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !2510)
!2532 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2510)
!2533 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2510)
!2534 = !DILocation(line: 378, column: 6, scope: !2498)
!2535 = !DILocation(line: 378, column: 14, scope: !2498)
!2536 = !DILocation(line: 379, column: 18, scope: !2498)
!2537 = !DILocation(line: 379, column: 22, scope: !2498)
!2538 = !DILocation(line: 379, column: 17, scope: !2498)
!2539 = !DILocation(line: 379, column: 3, scope: !2498)
!2540 = !DILocation(line: 380, column: 6, scope: !2498)
!2541 = !DILocation(line: 380, column: 13, scope: !2498)
!2542 = !DILocation(line: 381, column: 12, scope: !2498)
!2543 = !DILocation(line: 381, column: 19, scope: !2498)
!2544 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2508)
!2545 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !2508)
!2546 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2508)
!2547 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2508)
!2548 = !DILocation(line: 385, column: 3, scope: !2498)
!2549 = !DILocation(line: 378, column: 45, scope: !2498)
!2550 = !DILocation(line: 378, column: 16, scope: !2498)
!2551 = !DILocation(line: 383, column: 12, scope: !2498)
!2552 = !DILocation(line: 383, column: 24, scope: !2498)
!2553 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2506)
!2554 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !2506)
!2555 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2506)
!2556 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2506)
!2557 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2558 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2559 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 290, column: 9, scope: !2557)
!2561 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2560)
!2562 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !2560)
!2563 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2560)
!2564 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2560)
!2565 = !DILocation(line: 291, column: 2, scope: !2557)
!2566 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !102, file: !102, line: 183, type: !2558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2567 = !DILocation(line: 184, column: 30, scope: !2566)
!2568 = !DILocation(line: 184, column: 16, scope: !2566)
!2569 = !DILocation(line: 185, column: 2, scope: !2566)
!2570 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !102, file: !102, line: 58, type: !2571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2574)
!2571 = !DISubroutineType(cc: DW_CC_nocall, types: !2572)
!2572 = !{!432, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2574 = !{!2575, !2576, !2577, !2589, !2590}
!2575 = !DILocalVariable(name: "message", arg: 1, scope: !2570, file: !102, line: 58, type: !432)
!2576 = !DILocalVariable(name: "panicking", arg: 2, scope: !2570, file: !102, line: 58, type: !2573)
!2577 = !DILocalVariable(name: "frame", scope: !2570, file: !102, line: 65, type: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64, align: 64, dwarfAddressSpace: 0)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2586, !2587, !2588}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2585, align: 64, offset: 128)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !962)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2578, size: 64, align: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2573, size: 8, align: 8, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !432, size: 128, align: 64, offset: 256)
!2589 = !DILocalVariable(name: "PanicValue", scope: !2570, file: !102, line: 42, type: !432)
!2590 = !DILocalVariable(name: "Panicking", scope: !2570, file: !102, line: 41, type: !2573)
!2591 = !DILocation(line: 58, column: 6, scope: !2570)
!2592 = !DILocation(line: 62, column: 34, scope: !2358, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 65, column: 38, scope: !2570)
!2594 = !DILocation(line: 62, column: 2, scope: !2358, inlinedAt: !2593)
!2595 = !DILocation(line: 63, column: 5, scope: !2358, inlinedAt: !2593)
!2596 = !DILocation(line: 63, column: 7, scope: !2358, inlinedAt: !2593)
!2597 = !DILocation(line: 0, scope: !2358, inlinedAt: !2593)
!2598 = !DILocation(line: 64, column: 15, scope: !2358, inlinedAt: !2593)
!2599 = !DILocation(line: 66, column: 9, scope: !2358, inlinedAt: !2593)
!2600 = !DILocation(line: 65, column: 41, scope: !2570)
!2601 = !DILocation(line: 65, column: 3, scope: !2570)
!2602 = !DILocation(line: 66, column: 6, scope: !2570)
!2603 = !DILocation(line: 66, column: 12, scope: !2570)
!2604 = !DILocation(line: 0, scope: !2570)
!2605 = !DILocation(line: 67, column: 4, scope: !2570)
!2606 = !DILocation(line: 67, column: 23, scope: !2570)
!2607 = !DILocation(line: 67, column: 10, scope: !2570)
!2608 = !DILocation(line: 68, column: 4, scope: !2570)
!2609 = !DILocation(line: 68, column: 22, scope: !2570)
!2610 = !DILocation(line: 68, column: 10, scope: !2570)
!2611 = !DILocation(line: 69, column: 19, scope: !2570)
!2612 = !DILocation(line: 69, column: 18, scope: !2570)
!2613 = !DILocation(line: 73, column: 5, scope: !2570)
!2614 = !DILocation(line: 78, column: 13, scope: !2570)
!2615 = !DILocation(line: 79, column: 11, scope: !2570)
!2616 = !DILocation(line: 79, column: 10, scope: !2570)
!2617 = !DILocation(line: 80, column: 9, scope: !2570)
!2618 = !DILocation(line: 81, column: 7, scope: !2570)
!2619 = !DILocation(line: 82, column: 2, scope: !2570)
!2620 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2623)
!2621 = !DISubroutineType(cc: DW_CC_nocall, types: !2622)
!2622 = !{!432}
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2630, !2631, !2632, !2634, !2635, !2636, !2637, !2638, !2639, !2641, !2642, !2644, !2646, !2647, !2648, !2650}
!2624 = !DILocalVariable(name: "msg", arg: 1, scope: !2620, file: !1602, line: 293, type: !432)
!2625 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !47)
!2626 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !1739)
!2627 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !91)
!2628 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !2629)
!2629 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2630 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !60)
!2631 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !1699)
!2632 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !2633)
!2633 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2634 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !45)
!2635 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !98)
!2636 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !43)
!2637 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !11)
!2638 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !21)
!2639 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !2640)
!2640 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2641 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !450)
!2642 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !2643)
!2643 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2644 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !2645)
!2645 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2646 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !291)
!2647 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !431)
!2648 = !DILocalVariable(name: "msg", scope: !2620, file: !1602, line: 294, type: !2649)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !432)
!2650 = !DILocalVariable(name: "itf", scope: !2620, file: !1602, line: 345, type: !432)
!2651 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 338, column: 14, scope: !2620)
!2654 = !DILocation(line: 293, column: 6, scope: !2620)
!2655 = !DILocation(line: 294, column: 16, scope: !2620)
!2656 = !DILocation(line: 338, column: 15, scope: !2620)
!2657 = !DILocation(line: 12, column: 6, scope: !2473, inlinedAt: !2653)
!2658 = !DILocation(line: 13, column: 6, scope: !2473, inlinedAt: !2653)
!2659 = !DILocation(line: 13, column: 22, scope: !2473, inlinedAt: !2653)
!2660 = !DILocation(line: 0, scope: !2473, inlinedAt: !2653)
!2661 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !2653)
!2662 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !2653)
!2663 = !DILocation(line: 14, column: 12, scope: !2473, inlinedAt: !2653)
!2664 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !2652)
!2665 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !2652)
!2666 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !2652)
!2667 = !DILocation(line: 13, column: 26, scope: !2473, inlinedAt: !2653)
!2668 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !2653)
!2669 = !DILocation(line: 13, column: 16, scope: !2473, inlinedAt: !2653)
!2670 = !DILocation(line: 352, column: 2, scope: !2620)
!2671 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !102, file: !102, line: 54, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2672)
!2672 = !{!2673}
!2673 = !DILocalVariable(name: "message", arg: 1, scope: !2671, file: !102, line: 54, type: !432)
!2674 = !DILocation(line: 54, column: 6, scope: !2671)
!2675 = !DILocation(line: 55, column: 16, scope: !2671)
!2676 = !DILocation(line: 55, column: 15, scope: !2671)
!2677 = !DILocation(line: 56, column: 2, scope: !2671)
!2678 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1499, file: !1499, line: 60, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2679)
!2679 = !{!2680, !2681}
!2680 = !DILocalVariable(name: "x", arg: 1, scope: !2678, file: !1499, line: 60, type: !450)
!2681 = !DILocalVariable(name: "y", arg: 2, scope: !2678, file: !1499, line: 60, type: !450)
!2682 = !DILocation(line: 60, column: 6, scope: !2678)
!2683 = !DILocation(line: 61, column: 24, scope: !2678)
!2684 = !DILocation(line: 61, column: 27, scope: !2678)
!2685 = !DILocalVariable(name: "x", arg: 1, scope: !2686, file: !1499, line: 87, type: !450)
!2686 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1499, file: !1499, line: 87, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2687)
!2687 = !{!2685, !2688}
!2688 = !DILocalVariable(name: "y", arg: 2, scope: !2686, file: !1499, line: 87, type: !450)
!2689 = !DILocation(line: 87, column: 6, scope: !2686, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 61, column: 23, scope: !2678)
!2691 = !DILocation(line: 88, column: 38, scope: !2686, inlinedAt: !2690)
!2692 = !DILocation(line: 88, column: 41, scope: !2686, inlinedAt: !2690)
!2693 = !DILocalVariable(name: "x", arg: 1, scope: !2694, file: !1499, line: 101, type: !450)
!2694 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1499, file: !1499, line: 101, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!450, !450, !1699, !1699}
!2697 = !{!2693, !2698, !2699, !2700, !2701, !2702}
!2698 = !DILocalVariable(name: "y", arg: 2, scope: !2694, file: !1499, line: 101, type: !450)
!2699 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2694, file: !1499, line: 101, type: !1699)
!2700 = !DILocalVariable(name: "magMask", arg: 4, scope: !2694, file: !1499, line: 101, type: !1699)
!2701 = !DILocalVariable(name: "xBits", scope: !2694, file: !1499, line: 102, type: !432)
!2702 = !DILocalVariable(name: "yBits", scope: !2694, file: !1499, line: 103, type: !432)
!2703 = !DILocation(line: 101, column: 6, scope: !2694, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 88, column: 37, scope: !2686, inlinedAt: !2690)
!2705 = !DILocation(line: 102, column: 11, scope: !2694, inlinedAt: !2704)
!2706 = !DILocation(line: 102, column: 2, scope: !2694, inlinedAt: !2704)
!2707 = !DILocation(line: 103, column: 11, scope: !2694, inlinedAt: !2704)
!2708 = !DILocation(line: 103, column: 2, scope: !2694, inlinedAt: !2704)
!2709 = !DILocation(line: 107, column: 7, scope: !2694, inlinedAt: !2704)
!2710 = !DILocation(line: 107, column: 16, scope: !2694, inlinedAt: !2704)
!2711 = !DILocation(line: 107, column: 13, scope: !2694, inlinedAt: !2704)
!2712 = !DILocation(line: 0, scope: !2694, inlinedAt: !2704)
!2713 = !DILocation(line: 109, column: 7, scope: !2694, inlinedAt: !2704)
!2714 = !DILocation(line: 109, column: 16, scope: !2694, inlinedAt: !2704)
!2715 = !DILocation(line: 109, column: 13, scope: !2694, inlinedAt: !2704)
!2716 = !DILocation(line: 118, column: 5, scope: !2694, inlinedAt: !2704)
!2717 = !DILocation(line: 118, column: 11, scope: !2694, inlinedAt: !2704)
!2718 = !DILocation(line: 121, column: 5, scope: !2694, inlinedAt: !2704)
!2719 = !DILocation(line: 121, column: 11, scope: !2694, inlinedAt: !2704)
!2720 = !DILocation(line: 124, column: 5, scope: !2694, inlinedAt: !2704)
!2721 = !DILocation(line: 124, column: 14, scope: !2694, inlinedAt: !2704)
!2722 = !DILocation(line: 124, column: 11, scope: !2694, inlinedAt: !2704)
!2723 = !DILocation(line: 61, column: 2, scope: !2678)
!2724 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1499, file: !1499, line: 65, type: !2725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!2640, !2640}
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "x", arg: 1, scope: !2724, file: !1499, line: 65, type: !2640)
!2729 = !DILocalVariable(name: "y", arg: 2, scope: !2724, file: !1499, line: 65, type: !2640)
!2730 = !DILocation(line: 65, column: 6, scope: !2724)
!2731 = !DILocation(line: 66, column: 24, scope: !2724)
!2732 = !DILocation(line: 66, column: 27, scope: !2724)
!2733 = !DILocalVariable(name: "x", arg: 1, scope: !2734, file: !1499, line: 83, type: !2640)
!2734 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1499, file: !1499, line: 83, type: !2725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2735)
!2735 = !{!2733, !2736}
!2736 = !DILocalVariable(name: "y", arg: 2, scope: !2734, file: !1499, line: 83, type: !2640)
!2737 = !DILocation(line: 83, column: 6, scope: !2734, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 66, column: 23, scope: !2724)
!2739 = !DILocation(line: 84, column: 38, scope: !2734, inlinedAt: !2738)
!2740 = !DILocation(line: 84, column: 41, scope: !2734, inlinedAt: !2738)
!2741 = !DILocalVariable(name: "x", arg: 1, scope: !2742, file: !1499, line: 101, type: !2640)
!2742 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1499, file: !1499, line: 101, type: !2743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!2640, !2640, !60, !60}
!2745 = !{!2741, !2746, !2747, !2748, !2749, !2750}
!2746 = !DILocalVariable(name: "y", arg: 2, scope: !2742, file: !1499, line: 101, type: !2640)
!2747 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2742, file: !1499, line: 101, type: !60)
!2748 = !DILocalVariable(name: "magMask", arg: 4, scope: !2742, file: !1499, line: 101, type: !60)
!2749 = !DILocalVariable(name: "xBits", scope: !2742, file: !1499, line: 102, type: !432)
!2750 = !DILocalVariable(name: "yBits", scope: !2742, file: !1499, line: 103, type: !432)
!2751 = !DILocation(line: 101, column: 6, scope: !2742, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 84, column: 37, scope: !2734, inlinedAt: !2738)
!2753 = !DILocation(line: 102, column: 11, scope: !2742, inlinedAt: !2752)
!2754 = !DILocation(line: 102, column: 2, scope: !2742, inlinedAt: !2752)
!2755 = !DILocation(line: 103, column: 11, scope: !2742, inlinedAt: !2752)
!2756 = !DILocation(line: 103, column: 2, scope: !2742, inlinedAt: !2752)
!2757 = !DILocation(line: 107, column: 7, scope: !2742, inlinedAt: !2752)
!2758 = !DILocation(line: 107, column: 16, scope: !2742, inlinedAt: !2752)
!2759 = !DILocation(line: 107, column: 13, scope: !2742, inlinedAt: !2752)
!2760 = !DILocation(line: 0, scope: !2742, inlinedAt: !2752)
!2761 = !DILocation(line: 109, column: 7, scope: !2742, inlinedAt: !2752)
!2762 = !DILocation(line: 109, column: 16, scope: !2742, inlinedAt: !2752)
!2763 = !DILocation(line: 109, column: 13, scope: !2742, inlinedAt: !2752)
!2764 = !DILocation(line: 118, column: 5, scope: !2742, inlinedAt: !2752)
!2765 = !DILocation(line: 118, column: 11, scope: !2742, inlinedAt: !2752)
!2766 = !DILocation(line: 121, column: 5, scope: !2742, inlinedAt: !2752)
!2767 = !DILocation(line: 121, column: 11, scope: !2742, inlinedAt: !2752)
!2768 = !DILocation(line: 124, column: 5, scope: !2742, inlinedAt: !2752)
!2769 = !DILocation(line: 124, column: 14, scope: !2742, inlinedAt: !2752)
!2770 = !DILocation(line: 124, column: 11, scope: !2742, inlinedAt: !2752)
!2771 = !DILocation(line: 66, column: 2, scope: !2724)
!2772 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1499, file: !1499, line: 70, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2773)
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "x", arg: 1, scope: !2772, file: !1499, line: 70, type: !450)
!2775 = !DILocalVariable(name: "y", arg: 2, scope: !2772, file: !1499, line: 70, type: !450)
!2776 = !DILocation(line: 70, column: 6, scope: !2772)
!2777 = !DILocation(line: 71, column: 24, scope: !2772)
!2778 = !DILocation(line: 71, column: 27, scope: !2772)
!2779 = !DILocalVariable(name: "x", arg: 1, scope: !2780, file: !1499, line: 95, type: !450)
!2780 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1499, file: !1499, line: 95, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2781)
!2781 = !{!2779, !2782}
!2782 = !DILocalVariable(name: "y", arg: 2, scope: !2780, file: !1499, line: 95, type: !450)
!2783 = !DILocation(line: 95, column: 6, scope: !2780, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 71, column: 23, scope: !2772)
!2785 = !DILocation(line: 96, column: 38, scope: !2780, inlinedAt: !2784)
!2786 = !DILocation(line: 96, column: 41, scope: !2780, inlinedAt: !2784)
!2787 = !DILocalVariable(name: "x", arg: 1, scope: !2788, file: !1499, line: 133, type: !450)
!2788 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1499, file: !1499, line: 133, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2789)
!2789 = !{!2787, !2790, !2791, !2792, !2793, !2794, !2795}
!2790 = !DILocalVariable(name: "y", arg: 2, scope: !2788, file: !1499, line: 133, type: !450)
!2791 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2788, file: !1499, line: 133, type: !1699)
!2792 = !DILocalVariable(name: "magMask", arg: 4, scope: !2788, file: !1499, line: 133, type: !1699)
!2793 = !DILocalVariable(name: "xBits", scope: !2788, file: !1499, line: 134, type: !432)
!2794 = !DILocalVariable(name: "yBits", scope: !2788, file: !1499, line: 135, type: !432)
!2795 = !DILocalVariable(name: "maxNegNaN", scope: !2788, file: !1499, line: 149, type: !432)
!2796 = !DILocation(line: 133, column: 6, scope: !2788, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 96, column: 37, scope: !2780, inlinedAt: !2784)
!2798 = !DILocation(line: 134, column: 11, scope: !2788, inlinedAt: !2797)
!2799 = !DILocation(line: 134, column: 2, scope: !2788, inlinedAt: !2797)
!2800 = !DILocation(line: 135, column: 11, scope: !2788, inlinedAt: !2797)
!2801 = !DILocation(line: 135, column: 2, scope: !2788, inlinedAt: !2797)
!2802 = !DILocation(line: 142, column: 5, scope: !2788, inlinedAt: !2797)
!2803 = !DILocation(line: 142, column: 11, scope: !2788, inlinedAt: !2797)
!2804 = !DILocation(line: 0, scope: !2788, inlinedAt: !2797)
!2805 = !DILocation(line: 145, column: 5, scope: !2788, inlinedAt: !2797)
!2806 = !DILocation(line: 145, column: 11, scope: !2788, inlinedAt: !2797)
!2807 = !DILocation(line: 149, column: 16, scope: !2788, inlinedAt: !2797)
!2808 = !DILocation(line: 149, column: 2, scope: !2788, inlinedAt: !2797)
!2809 = !DILocation(line: 151, column: 7, scope: !2788, inlinedAt: !2797)
!2810 = !DILocation(line: 151, column: 16, scope: !2788, inlinedAt: !2797)
!2811 = !DILocation(line: 151, column: 13, scope: !2788, inlinedAt: !2797)
!2812 = !DILocation(line: 153, column: 7, scope: !2788, inlinedAt: !2797)
!2813 = !DILocation(line: 153, column: 16, scope: !2788, inlinedAt: !2797)
!2814 = !DILocation(line: 153, column: 13, scope: !2788, inlinedAt: !2797)
!2815 = !DILocation(line: 156, column: 5, scope: !2788, inlinedAt: !2797)
!2816 = !DILocation(line: 156, column: 14, scope: !2788, inlinedAt: !2797)
!2817 = !DILocation(line: 156, column: 11, scope: !2788, inlinedAt: !2797)
!2818 = !DILocation(line: 71, column: 2, scope: !2772)
!2819 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1499, file: !1499, line: 75, type: !2725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2820)
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "x", arg: 1, scope: !2819, file: !1499, line: 75, type: !2640)
!2822 = !DILocalVariable(name: "y", arg: 2, scope: !2819, file: !1499, line: 75, type: !2640)
!2823 = !DILocation(line: 75, column: 6, scope: !2819)
!2824 = !DILocation(line: 76, column: 24, scope: !2819)
!2825 = !DILocation(line: 76, column: 27, scope: !2819)
!2826 = !DILocalVariable(name: "x", arg: 1, scope: !2827, file: !1499, line: 91, type: !2640)
!2827 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1499, file: !1499, line: 91, type: !2725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2828)
!2828 = !{!2826, !2829}
!2829 = !DILocalVariable(name: "y", arg: 2, scope: !2827, file: !1499, line: 91, type: !2640)
!2830 = !DILocation(line: 91, column: 6, scope: !2827, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 76, column: 23, scope: !2819)
!2832 = !DILocation(line: 92, column: 38, scope: !2827, inlinedAt: !2831)
!2833 = !DILocation(line: 92, column: 41, scope: !2827, inlinedAt: !2831)
!2834 = !DILocalVariable(name: "x", arg: 1, scope: !2835, file: !1499, line: 133, type: !2640)
!2835 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1499, file: !1499, line: 133, type: !2743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2836)
!2836 = !{!2834, !2837, !2838, !2839, !2840, !2841, !2842}
!2837 = !DILocalVariable(name: "y", arg: 2, scope: !2835, file: !1499, line: 133, type: !2640)
!2838 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2835, file: !1499, line: 133, type: !60)
!2839 = !DILocalVariable(name: "magMask", arg: 4, scope: !2835, file: !1499, line: 133, type: !60)
!2840 = !DILocalVariable(name: "xBits", scope: !2835, file: !1499, line: 134, type: !432)
!2841 = !DILocalVariable(name: "yBits", scope: !2835, file: !1499, line: 135, type: !432)
!2842 = !DILocalVariable(name: "maxNegNaN", scope: !2835, file: !1499, line: 149, type: !432)
!2843 = !DILocation(line: 133, column: 6, scope: !2835, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 92, column: 37, scope: !2827, inlinedAt: !2831)
!2845 = !DILocation(line: 134, column: 11, scope: !2835, inlinedAt: !2844)
!2846 = !DILocation(line: 134, column: 2, scope: !2835, inlinedAt: !2844)
!2847 = !DILocation(line: 135, column: 11, scope: !2835, inlinedAt: !2844)
!2848 = !DILocation(line: 135, column: 2, scope: !2835, inlinedAt: !2844)
!2849 = !DILocation(line: 142, column: 5, scope: !2835, inlinedAt: !2844)
!2850 = !DILocation(line: 142, column: 11, scope: !2835, inlinedAt: !2844)
!2851 = !DILocation(line: 0, scope: !2835, inlinedAt: !2844)
!2852 = !DILocation(line: 145, column: 5, scope: !2835, inlinedAt: !2844)
!2853 = !DILocation(line: 145, column: 11, scope: !2835, inlinedAt: !2844)
!2854 = !DILocation(line: 149, column: 16, scope: !2835, inlinedAt: !2844)
!2855 = !DILocation(line: 149, column: 2, scope: !2835, inlinedAt: !2844)
!2856 = !DILocation(line: 151, column: 7, scope: !2835, inlinedAt: !2844)
!2857 = !DILocation(line: 151, column: 16, scope: !2835, inlinedAt: !2844)
!2858 = !DILocation(line: 151, column: 13, scope: !2835, inlinedAt: !2844)
!2859 = !DILocation(line: 153, column: 7, scope: !2835, inlinedAt: !2844)
!2860 = !DILocation(line: 153, column: 16, scope: !2835, inlinedAt: !2844)
!2861 = !DILocation(line: 153, column: 13, scope: !2835, inlinedAt: !2844)
!2862 = !DILocation(line: 156, column: 5, scope: !2835, inlinedAt: !2844)
!2863 = !DILocation(line: 156, column: 14, scope: !2835, inlinedAt: !2844)
!2864 = !DILocation(line: 156, column: 11, scope: !2835, inlinedAt: !2844)
!2865 = !DILocation(line: 76, column: 2, scope: !2819)
!2866 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1531, file: !1531, line: 46, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2867 = !DILocation(line: 62, column: 34, scope: !2358, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 193, column: 20, scope: !2869, inlinedAt: !2877)
!2869 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876}
!2871 = !DILocalVariable(name: "current", scope: !2869, file: !2, line: 193, type: !3)
!2872 = !DILocalVariable(name: "otherGoroutines", scope: !2869, file: !2, line: 99, type: !43)
!2873 = !DILocalVariable(name: "scanWaitGroup", scope: !2869, file: !2, line: 151, type: !79)
!2874 = !DILocalVariable(name: "activeTasks", scope: !2869, file: !2, line: 45, type: !3)
!2875 = !DILocalVariable(name: "t", scope: !2869, file: !2, line: 212, type: !3)
!2876 = !DILocalVariable(name: "t", scope: !2869, file: !2, line: 223, type: !3)
!2877 = distinct !DILocation(line: 8, column: 25, scope: !2878, inlinedAt: !2880)
!2878 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2879, file: !2879, line: 7, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2879 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2880 = distinct !DILocation(line: 48, column: 17, scope: !2866)
!2881 = !DILocation(line: 62, column: 2, scope: !2358, inlinedAt: !2868)
!2882 = !DILocation(line: 63, column: 5, scope: !2358, inlinedAt: !2868)
!2883 = !DILocation(line: 63, column: 7, scope: !2358, inlinedAt: !2868)
!2884 = !DILocation(line: 0, scope: !2358, inlinedAt: !2868)
!2885 = !DILocation(line: 64, column: 15, scope: !2358, inlinedAt: !2868)
!2886 = !DILocation(line: 66, column: 9, scope: !2358, inlinedAt: !2868)
!2887 = !DILocation(line: 193, column: 2, scope: !2869, inlinedAt: !2877)
!2888 = !DILocation(line: 147, column: 18, scope: !2408, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 196, column: 17, scope: !2869, inlinedAt: !2877)
!2890 = !DILocation(line: 147, column: 53, scope: !2408, inlinedAt: !2889)
!2891 = !DILocation(line: 183, column: 6, scope: !2416, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 147, column: 51, scope: !2408, inlinedAt: !2889)
!2893 = !DILocation(line: 196, column: 20, scope: !2869, inlinedAt: !2877)
!2894 = !DILocation(line: 0, scope: !2869, inlinedAt: !2877)
!2895 = !DILocation(line: 31, column: 17, scope: !2263, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 199, column: 22, scope: !2869, inlinedAt: !2877)
!2897 = !DILocation(line: 33, column: 5, scope: !2263, inlinedAt: !2896)
!2898 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 33, column: 27, scope: !2263, inlinedAt: !2896)
!2900 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !2899)
!2901 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !2899)
!2902 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !2899)
!2903 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !2899)
!2905 = !DILocation(line: 0, scope: !2263, inlinedAt: !2896)
!2906 = !DILocation(line: 43, column: 6, scope: !2263, inlinedAt: !2896)
!2907 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 43, column: 18, scope: !2263, inlinedAt: !2896)
!2909 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !2908)
!2910 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !2908)
!2911 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !2908)
!2913 = !DILocation(line: 43, column: 22, scope: !2263, inlinedAt: !2896)
!2914 = !DILocation(line: 45, column: 3, scope: !2263, inlinedAt: !2896)
!2915 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 45, column: 15, scope: !2263, inlinedAt: !2896)
!2917 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !2916)
!2918 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !2916)
!2919 = !DILocalVariable(name: "wg", arg: 1, scope: !2920, file: !2, line: 169, type: !2378)
!2920 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2921)
!2921 = !{!2919, !2922}
!2922 = !DILocalVariable(name: "val", scope: !2920, file: !2, line: 171, type: !43)
!2923 = !DILocation(line: 169, column: 22, scope: !2920, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 202, column: 21, scope: !2869, inlinedAt: !2877)
!2925 = !DILocation(line: 147, column: 18, scope: !2408, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 171, column: 19, scope: !2920, inlinedAt: !2924)
!2927 = !DILocation(line: 147, column: 53, scope: !2408, inlinedAt: !2926)
!2928 = !DILocation(line: 183, column: 6, scope: !2416, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 147, column: 51, scope: !2408, inlinedAt: !2926)
!2930 = !DILocation(line: 172, column: 10, scope: !2920, inlinedAt: !2924)
!2931 = !DILocation(line: 0, scope: !2920, inlinedAt: !2924)
!2932 = !DILocation(line: 175, column: 3, scope: !2920, inlinedAt: !2924)
!2933 = !DILocation(line: 175, column: 13, scope: !2920, inlinedAt: !2924)
!2934 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 175, column: 12, scope: !2920, inlinedAt: !2924)
!2936 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !2935)
!2937 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !2935)
!2938 = !DILocation(line: 172, column: 6, scope: !2920, inlinedAt: !2924)
!2939 = !DILocalVariable(name: "x", arg: 1, scope: !2940, file: !2215, line: 150, type: !2218)
!2940 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !2215, file: !2215, line: 150, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2941)
!2941 = !{!2939, !2942}
!2942 = !DILocalVariable(name: "val", arg: 2, scope: !2940, file: !2215, line: 150, type: !43)
!2943 = !DILocation(line: 150, column: 18, scope: !2940, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 206, column: 16, scope: !2869, inlinedAt: !2877)
!2945 = !DILocation(line: 150, column: 51, scope: !2940, inlinedAt: !2944)
!2946 = !DILocation(line: 150, column: 56, scope: !2940, inlinedAt: !2944)
!2947 = !DILocalVariable(name: "addr", arg: 1, scope: !2948, file: !2227, line: 205, type: !2230)
!2948 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !2227, file: !2227, line: 205, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2949)
!2949 = !{!2947, !2950}
!2950 = !DILocalVariable(name: "val", arg: 2, scope: !2948, file: !2227, line: 205, type: !43)
!2951 = !DILocation(line: 205, column: 6, scope: !2948, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 150, column: 49, scope: !2940, inlinedAt: !2944)
!2953 = !DILocation(line: 209, column: 33, scope: !2869, inlinedAt: !2877)
!2954 = !DILocation(line: 209, column: 3, scope: !2869, inlinedAt: !2877)
!2955 = !DILocation(line: 212, column: 12, scope: !2869, inlinedAt: !2877)
!2956 = !DILocation(line: 212, column: 7, scope: !2869, inlinedAt: !2877)
!2957 = !DILocation(line: 212, scope: !2869, inlinedAt: !2877)
!2958 = !DILocation(line: 212, column: 27, scope: !2869, inlinedAt: !2877)
!2959 = !DILocation(line: 213, column: 7, scope: !2869, inlinedAt: !2877)
!2960 = !DILocation(line: 213, column: 12, scope: !2869, inlinedAt: !2877)
!2961 = !DILocation(line: 213, column: 9, scope: !2869, inlinedAt: !2877)
!2962 = !DILocation(line: 214, column: 32, scope: !2869, inlinedAt: !2877)
!2963 = !DILocation(line: 214, column: 40, scope: !2869, inlinedAt: !2877)
!2964 = !DILocation(line: 214, column: 31, scope: !2869, inlinedAt: !2877)
!2965 = !DILocation(line: 212, column: 39, scope: !2869, inlinedAt: !2877)
!2966 = !DILocation(line: 212, column: 47, scope: !2869, inlinedAt: !2877)
!2967 = !DILocation(line: 212, column: 35, scope: !2869, inlinedAt: !2877)
!2968 = !DILocation(line: 212, column: 25, scope: !2869, inlinedAt: !2877)
!2969 = !DILocation(line: 169, column: 22, scope: !2920, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 219, column: 21, scope: !2869, inlinedAt: !2877)
!2971 = !DILocation(line: 147, column: 18, scope: !2408, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 171, column: 19, scope: !2920, inlinedAt: !2970)
!2973 = !DILocation(line: 147, column: 53, scope: !2408, inlinedAt: !2972)
!2974 = !DILocation(line: 183, column: 6, scope: !2416, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 147, column: 51, scope: !2408, inlinedAt: !2972)
!2976 = !DILocation(line: 172, column: 10, scope: !2920, inlinedAt: !2970)
!2977 = !DILocation(line: 0, scope: !2920, inlinedAt: !2970)
!2978 = !DILocation(line: 175, column: 3, scope: !2920, inlinedAt: !2970)
!2979 = !DILocation(line: 175, column: 13, scope: !2920, inlinedAt: !2970)
!2980 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 175, column: 12, scope: !2920, inlinedAt: !2970)
!2982 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !2981)
!2983 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !2981)
!2984 = !DILocation(line: 172, column: 6, scope: !2920, inlinedAt: !2970)
!2985 = !DILocation(line: 223, column: 11, scope: !2869, inlinedAt: !2877)
!2986 = !DILocation(line: 223, column: 6, scope: !2869, inlinedAt: !2877)
!2987 = !DILocation(line: 223, scope: !2869, inlinedAt: !2877)
!2988 = !DILocation(line: 223, column: 26, scope: !2869, inlinedAt: !2877)
!2989 = !DILocation(line: 224, column: 6, scope: !2869, inlinedAt: !2877)
!2990 = !DILocation(line: 224, column: 11, scope: !2869, inlinedAt: !2877)
!2991 = !DILocation(line: 224, column: 8, scope: !2869, inlinedAt: !2877)
!2992 = !DILocation(line: 225, column: 14, scope: !2869, inlinedAt: !2877)
!2993 = !DILocation(line: 225, column: 22, scope: !2869, inlinedAt: !2877)
!2994 = !DILocation(line: 225, column: 35, scope: !2869, inlinedAt: !2877)
!2995 = !DILocation(line: 225, column: 43, scope: !2869, inlinedAt: !2877)
!2996 = !DILocalVariable(name: "start", arg: 1, scope: !2997, file: !1531, line: 51, type: !21)
!2997 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1531, file: !1531, line: 51, type: !2998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!21, !21}
!3000 = !{!2996, !3001}
!3001 = !DILocalVariable(name: "end", arg: 2, scope: !2997, file: !1531, line: 51, type: !21)
!3002 = !DILocation(line: 51, column: 6, scope: !2997, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 225, column: 13, scope: !2869, inlinedAt: !2877)
!3004 = !DILocation(line: 52, column: 17, scope: !2997, inlinedAt: !3003)
!3005 = !DILocation(line: 52, column: 24, scope: !2997, inlinedAt: !3003)
!3006 = !DILocation(line: 52, column: 16, scope: !2997, inlinedAt: !3003)
!3007 = !DILocation(line: 223, column: 38, scope: !2869, inlinedAt: !2877)
!3008 = !DILocation(line: 223, column: 46, scope: !2869, inlinedAt: !2877)
!3009 = !DILocation(line: 223, column: 34, scope: !2869, inlinedAt: !2877)
!3010 = !DILocation(line: 223, column: 24, scope: !2869, inlinedAt: !2877)
!3011 = !DILocation(line: 230, column: 18, scope: !2869, inlinedAt: !2877)
!3012 = !DILocalVariable(name: "found", arg: 1, scope: !3013, file: !3014, line: 95, type: !277)
!3013 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !3014, file: !3014, line: 95, type: !3015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3017)
!3014 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!277}
!3017 = !{!3012, !3018, !3019, !3020, !3033, !3034, !3035, !3042, !3043}
!3018 = !DILocalVariable(name: "headerPtr", scope: !3013, file: !3014, line: 103, type: !9)
!3019 = !DILocalVariable(name: "i", scope: !3013, file: !3014, line: 104, type: !1739)
!3020 = !DILocalVariable(name: "header", scope: !3013, file: !3014, line: 111, type: !3021)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64, align: 64, dwarfAddressSpace: 0)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !3023)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!3033 = !DILocalVariable(name: "start", scope: !3013, file: !3014, line: 113, type: !21)
!3034 = !DILocalVariable(name: "end", scope: !3013, file: !3014, line: 114, type: !21)
!3035 = !DILocalVariable(name: "header", scope: !3013, file: !3014, line: 118, type: !3036)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64, align: 64, dwarfAddressSpace: 0)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !3038)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !3039)
!3039 = !{!3025, !3027, !3028, !3029, !3030, !3031, !3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!3042 = !DILocalVariable(name: "start", scope: !3013, file: !3014, line: 120, type: !21)
!3043 = !DILocalVariable(name: "end", scope: !3013, file: !3014, line: 121, type: !21)
!3044 = !DILocation(line: 95, column: 6, scope: !3013, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 16, column: 13, scope: !3046, inlinedAt: !3047)
!3046 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2879, file: !2879, line: 15, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!3047 = distinct !DILocation(line: 233, column: 15, scope: !2869, inlinedAt: !2877)
!3048 = !DILocation(line: 103, column: 2, scope: !3013, inlinedAt: !3045)
!3049 = !DILocation(line: 104, column: 6, scope: !3013, inlinedAt: !3045)
!3050 = !DILocation(line: 104, column: 33, scope: !3013, inlinedAt: !3045)
!3051 = !DILocation(line: 104, column: 16, scope: !3013, inlinedAt: !3045)
!3052 = !DILocation(line: 0, scope: !3013, inlinedAt: !3045)
!3053 = !DILocation(line: 103, column: 80, scope: !3013, inlinedAt: !3045)
!3054 = !DILocation(line: 103, column: 67, scope: !3013, inlinedAt: !3045)
!3055 = !DILocation(line: 103, column: 29, scope: !3013, inlinedAt: !3045)
!3056 = !DILocation(line: 112, column: 14, scope: !3013, inlinedAt: !3045)
!3057 = !DILocation(line: 104, column: 14, scope: !3013, inlinedAt: !3045)
!3058 = !DILocation(line: 111, column: 36, scope: !3013, inlinedAt: !3045)
!3059 = !DILocation(line: 111, column: 4, scope: !3013, inlinedAt: !3045)
!3060 = !DILocation(line: 112, column: 7, scope: !3013, inlinedAt: !3045)
!3061 = !DILocation(line: 112, column: 20, scope: !3013, inlinedAt: !3045)
!3062 = !DILocation(line: 112, column: 34, scope: !3013, inlinedAt: !3045)
!3063 = !DILocation(line: 112, column: 41, scope: !3013, inlinedAt: !3045)
!3064 = !DILocation(line: 112, column: 46, scope: !3013, inlinedAt: !3045)
!3065 = !DILocation(line: 112, column: 52, scope: !3013, inlinedAt: !3045)
!3066 = !DILocation(line: 113, column: 14, scope: !3013, inlinedAt: !3045)
!3067 = !DILocation(line: 113, column: 21, scope: !3013, inlinedAt: !3045)
!3068 = !DILocation(line: 113, column: 5, scope: !3013, inlinedAt: !3045)
!3069 = !DILocation(line: 114, column: 12, scope: !3013, inlinedAt: !3045)
!3070 = !DILocation(line: 114, column: 20, scope: !3013, inlinedAt: !3045)
!3071 = !DILocation(line: 114, column: 5, scope: !3013, inlinedAt: !3045)
!3072 = !DILocation(line: 115, column: 5, scope: !3013, inlinedAt: !3045)
!3073 = !DILocation(line: 115, column: 11, scope: !3013, inlinedAt: !3045)
!3074 = !DILocation(line: 115, column: 18, scope: !3013, inlinedAt: !3045)
!3075 = !DILocation(line: 114, column: 27, scope: !3013, inlinedAt: !3045)
!3076 = !DILocation(line: 114, column: 18, scope: !3013, inlinedAt: !3045)
!3077 = !DILocation(line: 51, column: 6, scope: !2997, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 115, column: 10, scope: !3013, inlinedAt: !3045)
!3079 = !DILocation(line: 52, column: 17, scope: !2997, inlinedAt: !3078)
!3080 = !DILocation(line: 52, column: 24, scope: !2997, inlinedAt: !3078)
!3081 = !DILocation(line: 52, column: 16, scope: !2997, inlinedAt: !3078)
!3082 = !DILocation(line: 125, column: 26, scope: !3013, inlinedAt: !3045)
!3083 = !DILocation(line: 125, column: 48, scope: !3013, inlinedAt: !3045)
!3084 = !DILocation(line: 125, column: 25, scope: !3013, inlinedAt: !3045)
!3085 = !DILocation(line: 125, column: 3, scope: !3013, inlinedAt: !3045)
!3086 = !DILocation(line: 104, column: 41, scope: !3013, inlinedAt: !3045)
!3087 = !DILocation(line: 104, column: 21, scope: !3013, inlinedAt: !3045)
!3088 = !DILocation(line: 49, column: 2, scope: !2866)
!3089 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2879, file: !2879, line: 23, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3091)
!3090 = !DISubroutineType(types: !2500)
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "sp", arg: 1, scope: !3089, file: !2879, line: 23, type: !21)
!3093 = !DILocation(line: 23, column: 6, scope: !3089)
!3094 = !DILocation(line: 24, column: 12, scope: !3089)
!3095 = !DILocation(line: 62, column: 34, scope: !2358, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 290, column: 16, scope: !3097, inlinedAt: !3098)
!3097 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456)
!3098 = distinct !DILocation(line: 24, column: 29, scope: !3089)
!3099 = !DILocation(line: 62, column: 2, scope: !2358, inlinedAt: !3096)
!3100 = !DILocation(line: 63, column: 5, scope: !2358, inlinedAt: !3096)
!3101 = !DILocation(line: 63, column: 7, scope: !2358, inlinedAt: !3096)
!3102 = !DILocation(line: 0, scope: !2358, inlinedAt: !3096)
!3103 = !DILocation(line: 64, column: 15, scope: !2358, inlinedAt: !3096)
!3104 = !DILocation(line: 66, column: 9, scope: !2358, inlinedAt: !3096)
!3105 = !DILocation(line: 290, column: 25, scope: !3097, inlinedAt: !3098)
!3106 = !DILocation(line: 51, column: 6, scope: !2997, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 24, column: 11, scope: !3089)
!3108 = !DILocation(line: 52, column: 17, scope: !2997, inlinedAt: !3107)
!3109 = !DILocation(line: 52, column: 24, scope: !2997, inlinedAt: !3107)
!3110 = !DILocation(line: 52, column: 16, scope: !2997, inlinedAt: !3107)
!3111 = !DILocation(line: 25, column: 2, scope: !3089)
!3112 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !123, file: !123, line: 80, type: !3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!60, !126}
!3115 = !{!3116, !3117, !3118, !3119, !3120}
!3116 = !DILocalVariable(name: "argc", arg: 1, scope: !3112, file: !123, line: 80, type: !60)
!3117 = !DILocalVariable(name: "argv", arg: 2, scope: !3112, file: !123, line: 80, type: !126)
!3118 = !DILocalVariable(name: "main_argc", scope: !3112, file: !123, line: 105, type: !60)
!3119 = !DILocalVariable(name: "main_argv", scope: !3112, file: !123, line: 106, type: !126)
!3120 = !DILocalVariable(name: "stackTop", scope: !3112, file: !123, line: 75, type: !21)
!3121 = !DILocation(line: 80, column: 6, scope: !3112)
!3122 = !DILocation(line: 87, column: 14, scope: !3112)
!3123 = !DILocation(line: 87, column: 2, scope: !3112)
!3124 = !DILocation(line: 88, column: 14, scope: !3112)
!3125 = !DILocation(line: 88, column: 2, scope: !3112)
!3126 = !DILocation(line: 92, column: 31, scope: !3112)
!3127 = !DILocation(line: 58, column: 6, scope: !2370, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 27, column: 26, scope: !3129, inlinedAt: !3131)
!3129 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !3130, file: !3130, line: 26, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!3130 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!3131 = distinct !DILocation(line: 97, column: 35, scope: !3112)
!3132 = !DILocation(line: 27, column: 16, scope: !3129, inlinedAt: !3131)
!3133 = !DILocation(line: 97, column: 2, scope: !3112)
!3134 = !DILocation(line: 98, column: 9, scope: !3112)
!3135 = !DILocation(line: 101, column: 2, scope: !3112)
!3136 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !123, file: !123, line: 135, type: !2558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!3137 = !DILocation(line: 137, column: 22, scope: !3138, inlinedAt: !3142)
!3138 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !3014, file: !3014, line: 137, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3139)
!3139 = !{!3140, !3141}
!3140 = !DILocalVariable(name: "read", scope: !3138, file: !3014, line: 138, type: !43)
!3141 = !DILocalVariable(name: "n", scope: !3138, file: !3014, line: 137, type: !11)
!3142 = distinct !DILocation(line: 27, column: 22, scope: !3143, inlinedAt: !3148)
!3143 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1494, file: !1494, line: 26, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DILocalVariable(name: "r", scope: !3143, file: !1494, line: 27, type: !11)
!3146 = !DILocalVariable(name: "xorshift64State", scope: !3143, file: !1494, line: 52, type: !11)
!3147 = !DILocalVariable(name: "xorshift32State", scope: !3143, file: !1494, line: 32, type: !43)
!3148 = distinct !DILocation(line: 24, column: 10, scope: !3149, inlinedAt: !3152)
!3149 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !137, file: !137, line: 23, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3150)
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "stackTop", scope: !3149, file: !123, line: 75, type: !21)
!3152 = distinct !DILocation(line: 136, column: 5, scope: !3136)
!3153 = !DILocation(line: 138, column: 24, scope: !3138, inlinedAt: !3142)
!3154 = !DILocation(line: 138, column: 2, scope: !3138, inlinedAt: !3142)
!3155 = !DILocation(line: 139, column: 5, scope: !3138, inlinedAt: !3142)
!3156 = !DILocation(line: 139, column: 10, scope: !3138, inlinedAt: !3142)
!3157 = !DILocation(line: 0, scope: !3138, inlinedAt: !3142)
!3158 = !DILocation(line: 140, column: 3, scope: !3138, inlinedAt: !3142)
!3159 = !DILocation(line: 27, column: 2, scope: !3143, inlinedAt: !3148)
!3160 = !DILocation(line: 28, column: 27, scope: !3143, inlinedAt: !3148)
!3161 = !DILocation(line: 28, column: 2, scope: !3143, inlinedAt: !3148)
!3162 = !DILocation(line: 29, column: 27, scope: !3143, inlinedAt: !3148)
!3163 = !DILocation(line: 29, column: 2, scope: !3143, inlinedAt: !3148)
!3164 = !DILocation(line: 35, column: 12, scope: !3165, inlinedAt: !3166)
!3165 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1531, file: !1531, line: 34, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!3166 = distinct !DILocation(line: 25, column: 10, scope: !3149, inlinedAt: !3152)
!3167 = !DILocation(line: 39, column: 8, scope: !3165, inlinedAt: !3166)
!3168 = !DILocation(line: 26, column: 12, scope: !3149, inlinedAt: !3152)
!3169 = !DILocalVariable(name: "sp", arg: 1, scope: !3170, file: !2, line: 55, type: !21)
!3170 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !3171)
!3171 = !{!3169, !3172}
!3172 = !DILocalVariable(name: "stackTop", scope: !3170, file: !2, line: 24, type: !21)
!3173 = !DILocation(line: 55, column: 6, scope: !3170, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 26, column: 11, scope: !3149, inlinedAt: !3152)
!3175 = !DILocation(line: 56, column: 28, scope: !3170, inlinedAt: !3174)
!3176 = !DILocation(line: 56, column: 17, scope: !3170, inlinedAt: !3174)
!3177 = !DILocation(line: 57, column: 18, scope: !3170, inlinedAt: !3174)
!3178 = !DILocation(line: 28, column: 10, scope: !3149, inlinedAt: !3152)
!3179 = !DILocation(line: 137, column: 2, scope: !3136)
!3180 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !123, file: !123, line: 148, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!60, !21}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "sig", arg: 1, scope: !3180, file: !123, line: 148, type: !60)
!3185 = !DILocalVariable(name: "addr", arg: 2, scope: !3180, file: !123, line: 148, type: !21)
!3186 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 158, column: 14, scope: !3180)
!3189 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 290, column: 9, scope: !2557, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 169, column: 10, scope: !3180)
!3192 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 90, column: 10, scope: !3194, inlinedAt: !3201)
!3194 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !1817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200}
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3194, file: !1602, line: 76, type: !11)
!3197 = !DILocalVariable(name: "firstdigit", scope: !3194, file: !1602, line: 79, type: !1739)
!3198 = !DILocalVariable(name: "i", scope: !3194, file: !1602, line: 80, type: !1739)
!3199 = !DILocalVariable(name: "digit", scope: !3194, file: !1602, line: 81, type: !155)
!3200 = !DILocalVariable(name: "i", scope: !3194, file: !1602, line: 89, type: !1739)
!3201 = distinct !DILocation(line: 62, column: 13, scope: !3202, inlinedAt: !3207)
!3202 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!43}
!3205 = !{!3206}
!3206 = !DILocalVariable(name: "n", arg: 1, scope: !3202, file: !1602, line: 61, type: !43)
!3207 = distinct !DILocation(line: 72, column: 13, scope: !3208, inlinedAt: !3211)
!3208 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3209)
!3209 = !{!3210}
!3210 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !1602, line: 65, type: !60)
!3211 = distinct !DILocation(line: 169, column: 10, scope: !3180)
!3212 = !DILocation(line: 76, column: 6, scope: !3194, inlinedAt: !3201)
!3213 = !DILocation(line: 77, column: 2, scope: !3194, inlinedAt: !3201)
!3214 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 69, column: 10, scope: !3208, inlinedAt: !3211)
!3216 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 290, column: 9, scope: !2557, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 167, column: 10, scope: !3180)
!3219 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 167, column: 10, scope: !3180)
!3222 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 290, column: 9, scope: !2557, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 165, column: 10, scope: !3180)
!3225 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 165, column: 10, scope: !3180)
!3228 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 290, column: 9, scope: !2557, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 163, column: 10, scope: !3180)
!3231 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 163, column: 10, scope: !3180)
!3234 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 160, column: 13, scope: !3180)
!3237 = !DILocation(line: 215, column: 2, scope: !2478, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 14, column: 10, scope: !2473, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 155, column: 14, scope: !3180)
!3240 = !DILocation(line: 148, column: 6, scope: !3180)
!3241 = !DILocation(line: 154, column: 5, scope: !3180)
!3242 = !DILocation(line: 154, column: 10, scope: !3180)
!3243 = !DILocation(line: 0, scope: !3180)
!3244 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !3239)
!3245 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !3239)
!3246 = !DILocation(line: 14, column: 12, scope: !2473, inlinedAt: !3239)
!3247 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3238)
!3248 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3238)
!3249 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3238)
!3250 = !DILocation(line: 13, column: 26, scope: !2473, inlinedAt: !3239)
!3251 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !3239)
!3252 = !DILocation(line: 13, column: 16, scope: !2473, inlinedAt: !3239)
!3253 = !DILocation(line: 0, scope: !2473, inlinedAt: !3239)
!3254 = !DILocation(line: 156, column: 12, scope: !3180)
!3255 = !DILocation(line: 156, column: 11, scope: !3180)
!3256 = !DILocation(line: 12, column: 6, scope: !2473, inlinedAt: !3236)
!3257 = !DILocation(line: 13, column: 6, scope: !2473, inlinedAt: !3236)
!3258 = !DILocation(line: 13, column: 22, scope: !2473, inlinedAt: !3236)
!3259 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !3236)
!3260 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !3236)
!3261 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3235)
!3262 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3235)
!3263 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3235)
!3264 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !3236)
!3265 = !DILocation(line: 161, column: 9, scope: !3180)
!3266 = !DILocation(line: 31, column: 17, scope: !2263, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 139, column: 16, scope: !3268, inlinedAt: !3269)
!3268 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !137, file: !137, line: 138, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!3269 = distinct !DILocation(line: 163, column: 10, scope: !3180)
!3270 = !DILocation(line: 33, column: 5, scope: !2263, inlinedAt: !3267)
!3271 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 33, column: 27, scope: !2263, inlinedAt: !3267)
!3273 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !3272)
!3274 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !3272)
!3275 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !3272)
!3276 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !3272)
!3278 = !DILocation(line: 0, scope: !2263, inlinedAt: !3267)
!3279 = !DILocation(line: 43, column: 6, scope: !2263, inlinedAt: !3267)
!3280 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 43, column: 18, scope: !2263, inlinedAt: !3267)
!3282 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3281)
!3283 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3281)
!3284 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3281)
!3286 = !DILocation(line: 43, column: 22, scope: !2263, inlinedAt: !3267)
!3287 = !DILocation(line: 45, column: 3, scope: !2263, inlinedAt: !3267)
!3288 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 45, column: 15, scope: !2263, inlinedAt: !3267)
!3290 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !3289)
!3291 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !3289)
!3292 = !DILocation(line: 12, column: 6, scope: !2473, inlinedAt: !3233)
!3293 = !DILocation(line: 13, column: 6, scope: !2473, inlinedAt: !3233)
!3294 = !DILocation(line: 13, column: 22, scope: !2473, inlinedAt: !3233)
!3295 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !3233)
!3296 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !3233)
!3297 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3232)
!3298 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3232)
!3299 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3232)
!3300 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !3233)
!3301 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3229)
!3302 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3229)
!3303 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3229)
!3304 = !DILocation(line: 50, column: 12, scope: !2203, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 143, column: 18, scope: !3306, inlinedAt: !3307)
!3306 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !137, file: !137, line: 142, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!3307 = distinct !DILocation(line: 163, column: 10, scope: !3180)
!3308 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 50, column: 24, scope: !2203, inlinedAt: !3305)
!3310 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3309)
!3311 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3309)
!3313 = !DILocation(line: 50, column: 29, scope: !2203, inlinedAt: !3305)
!3314 = !DILocation(line: 0, scope: !2203, inlinedAt: !3305)
!3315 = !DILocation(line: 52, column: 8, scope: !2203, inlinedAt: !3305)
!3316 = !DILocation(line: 55, column: 3, scope: !2203, inlinedAt: !3305)
!3317 = !DILocation(line: 53, column: 17, scope: !2241, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 55, column: 15, scope: !2203, inlinedAt: !3305)
!3319 = !DILocation(line: 54, column: 46, scope: !2241, inlinedAt: !3318)
!3320 = !DILocation(line: 54, column: 19, scope: !2241, inlinedAt: !3318)
!3321 = !DILocation(line: 180, column: 8, scope: !3180)
!3322 = !DILocation(line: 180, column: 7, scope: !3180)
!3323 = !DILocation(line: 181, column: 2, scope: !3180)
!3324 = !DILocation(line: 31, column: 17, scope: !2263, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 139, column: 16, scope: !3268, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 165, column: 10, scope: !3180)
!3327 = !DILocation(line: 33, column: 5, scope: !2263, inlinedAt: !3325)
!3328 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 33, column: 27, scope: !2263, inlinedAt: !3325)
!3330 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !3329)
!3331 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !3329)
!3332 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !3329)
!3333 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !3329)
!3335 = !DILocation(line: 0, scope: !2263, inlinedAt: !3325)
!3336 = !DILocation(line: 43, column: 6, scope: !2263, inlinedAt: !3325)
!3337 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 43, column: 18, scope: !2263, inlinedAt: !3325)
!3339 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3338)
!3340 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3338)
!3341 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3338)
!3343 = !DILocation(line: 43, column: 22, scope: !2263, inlinedAt: !3325)
!3344 = !DILocation(line: 45, column: 3, scope: !2263, inlinedAt: !3325)
!3345 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 45, column: 15, scope: !2263, inlinedAt: !3325)
!3347 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !3346)
!3348 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !3346)
!3349 = !DILocation(line: 12, column: 6, scope: !2473, inlinedAt: !3227)
!3350 = !DILocation(line: 13, column: 6, scope: !2473, inlinedAt: !3227)
!3351 = !DILocation(line: 13, column: 22, scope: !2473, inlinedAt: !3227)
!3352 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !3227)
!3353 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !3227)
!3354 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3226)
!3355 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3226)
!3356 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3226)
!3357 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !3227)
!3358 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3223)
!3359 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3223)
!3360 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3223)
!3361 = !DILocation(line: 50, column: 12, scope: !2203, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 143, column: 18, scope: !3306, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 165, column: 10, scope: !3180)
!3364 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 50, column: 24, scope: !2203, inlinedAt: !3362)
!3366 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3365)
!3367 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3365)
!3369 = !DILocation(line: 50, column: 29, scope: !2203, inlinedAt: !3362)
!3370 = !DILocation(line: 0, scope: !2203, inlinedAt: !3362)
!3371 = !DILocation(line: 52, column: 8, scope: !2203, inlinedAt: !3362)
!3372 = !DILocation(line: 55, column: 3, scope: !2203, inlinedAt: !3362)
!3373 = !DILocation(line: 53, column: 17, scope: !2241, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 55, column: 15, scope: !2203, inlinedAt: !3362)
!3375 = !DILocation(line: 54, column: 46, scope: !2241, inlinedAt: !3374)
!3376 = !DILocation(line: 54, column: 19, scope: !2241, inlinedAt: !3374)
!3377 = !DILocation(line: 31, column: 17, scope: !2263, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 139, column: 16, scope: !3268, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 167, column: 10, scope: !3180)
!3380 = !DILocation(line: 33, column: 5, scope: !2263, inlinedAt: !3378)
!3381 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 33, column: 27, scope: !2263, inlinedAt: !3378)
!3383 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !3382)
!3384 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !3382)
!3385 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !3382)
!3386 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !3382)
!3388 = !DILocation(line: 0, scope: !2263, inlinedAt: !3378)
!3389 = !DILocation(line: 43, column: 6, scope: !2263, inlinedAt: !3378)
!3390 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 43, column: 18, scope: !2263, inlinedAt: !3378)
!3392 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3391)
!3393 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3391)
!3394 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3391)
!3396 = !DILocation(line: 43, column: 22, scope: !2263, inlinedAt: !3378)
!3397 = !DILocation(line: 45, column: 3, scope: !2263, inlinedAt: !3378)
!3398 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 45, column: 15, scope: !2263, inlinedAt: !3378)
!3400 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !3399)
!3401 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !3399)
!3402 = !DILocation(line: 12, column: 6, scope: !2473, inlinedAt: !3221)
!3403 = !DILocation(line: 13, column: 6, scope: !2473, inlinedAt: !3221)
!3404 = !DILocation(line: 13, column: 22, scope: !2473, inlinedAt: !3221)
!3405 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !3221)
!3406 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !3221)
!3407 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3220)
!3408 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3220)
!3409 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3220)
!3410 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !3221)
!3411 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3217)
!3412 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3217)
!3413 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3217)
!3414 = !DILocation(line: 50, column: 12, scope: !2203, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 143, column: 18, scope: !3306, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 167, column: 10, scope: !3180)
!3417 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 50, column: 24, scope: !2203, inlinedAt: !3415)
!3419 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3418)
!3420 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3418)
!3422 = !DILocation(line: 50, column: 29, scope: !2203, inlinedAt: !3415)
!3423 = !DILocation(line: 0, scope: !2203, inlinedAt: !3415)
!3424 = !DILocation(line: 52, column: 8, scope: !2203, inlinedAt: !3415)
!3425 = !DILocation(line: 55, column: 3, scope: !2203, inlinedAt: !3415)
!3426 = !DILocation(line: 53, column: 17, scope: !2241, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 55, column: 15, scope: !2203, inlinedAt: !3415)
!3428 = !DILocation(line: 54, column: 46, scope: !2241, inlinedAt: !3427)
!3429 = !DILocation(line: 54, column: 19, scope: !2241, inlinedAt: !3427)
!3430 = !DILocation(line: 169, column: 11, scope: !3180)
!3431 = !DILocation(line: 31, column: 17, scope: !2263, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 139, column: 16, scope: !3268, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 169, column: 10, scope: !3180)
!3434 = !DILocation(line: 33, column: 5, scope: !2263, inlinedAt: !3432)
!3435 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 33, column: 27, scope: !2263, inlinedAt: !3432)
!3437 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !3436)
!3438 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !3436)
!3439 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !3436)
!3440 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !3436)
!3442 = !DILocation(line: 0, scope: !2263, inlinedAt: !3432)
!3443 = !DILocation(line: 43, column: 6, scope: !2263, inlinedAt: !3432)
!3444 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 43, column: 18, scope: !2263, inlinedAt: !3432)
!3446 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3445)
!3447 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3445)
!3448 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3445)
!3450 = !DILocation(line: 43, column: 22, scope: !2263, inlinedAt: !3432)
!3451 = !DILocation(line: 45, column: 3, scope: !2263, inlinedAt: !3432)
!3452 = !DILocation(line: 26, column: 46, scope: !2301, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 45, column: 15, scope: !2263, inlinedAt: !3432)
!3454 = !DILocation(line: 26, column: 58, scope: !2301, inlinedAt: !3453)
!3455 = !DILocation(line: 26, column: 19, scope: !2301, inlinedAt: !3453)
!3456 = !DILocation(line: 65, column: 6, scope: !3208, inlinedAt: !3211)
!3457 = !DILocation(line: 68, column: 5, scope: !3208, inlinedAt: !3211)
!3458 = !DILocation(line: 68, column: 7, scope: !3208, inlinedAt: !3211)
!3459 = !DILocation(line: 0, scope: !3208, inlinedAt: !3211)
!3460 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3215)
!3461 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !3215)
!3462 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3215)
!3463 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3215)
!3464 = !DILocation(line: 70, column: 8, scope: !3208, inlinedAt: !3211)
!3465 = !DILocation(line: 70, column: 7, scope: !3208, inlinedAt: !3211)
!3466 = !DILocation(line: 70, column: 3, scope: !3208, inlinedAt: !3211)
!3467 = !DILocation(line: 65, column: 17, scope: !3208, inlinedAt: !3211)
!3468 = !DILocation(line: 72, column: 21, scope: !3208, inlinedAt: !3211)
!3469 = !DILocation(line: 61, column: 6, scope: !3202, inlinedAt: !3207)
!3470 = !DILocation(line: 62, column: 21, scope: !3202, inlinedAt: !3207)
!3471 = !DILocation(line: 62, column: 20, scope: !3202, inlinedAt: !3207)
!3472 = !DILocation(line: 79, column: 2, scope: !3194, inlinedAt: !3201)
!3473 = !DILocation(line: 80, column: 6, scope: !3194, inlinedAt: !3201)
!3474 = !DILocation(line: 0, scope: !3194, inlinedAt: !3201)
!3475 = !DILocation(line: 89, column: 23, scope: !3194, inlinedAt: !3201)
!3476 = !DILocation(line: 89, column: 25, scope: !3194, inlinedAt: !3201)
!3477 = !DILocation(line: 80, column: 15, scope: !3194, inlinedAt: !3201)
!3478 = !DILocation(line: 81, column: 17, scope: !3194, inlinedAt: !3201)
!3479 = !DILocation(line: 81, column: 18, scope: !3194, inlinedAt: !3201)
!3480 = !DILocation(line: 81, column: 16, scope: !3194, inlinedAt: !3201)
!3481 = !DILocation(line: 82, column: 15, scope: !3194, inlinedAt: !3201)
!3482 = !DILocation(line: 82, column: 9, scope: !3194, inlinedAt: !3201)
!3483 = !DILocation(line: 83, column: 12, scope: !3194, inlinedAt: !3201)
!3484 = !DILocation(line: 86, column: 3, scope: !3194, inlinedAt: !3201)
!3485 = !DILocation(line: 80, column: 23, scope: !3194, inlinedAt: !3201)
!3486 = !DILocation(line: 80, column: 17, scope: !3194, inlinedAt: !3201)
!3487 = !DILocation(line: 90, column: 18, scope: !3194, inlinedAt: !3201)
!3488 = !DILocation(line: 90, column: 17, scope: !3194, inlinedAt: !3201)
!3489 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3193)
!3490 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3193)
!3491 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3193)
!3492 = !DILocation(line: 89, column: 31, scope: !3194, inlinedAt: !3201)
!3493 = !DILocation(line: 92, column: 2, scope: !3194, inlinedAt: !3201)
!3494 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3190)
!3495 = !DILocation(line: 214, column: 6, scope: !2478, inlinedAt: !3190)
!3496 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3190)
!3497 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3190)
!3498 = !DILocation(line: 49, column: 17, scope: !2203, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 143, column: 18, scope: !3306, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 169, column: 10, scope: !3180)
!3501 = !DILocation(line: 50, column: 12, scope: !2203, inlinedAt: !3499)
!3502 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 50, column: 24, scope: !2203, inlinedAt: !3499)
!3504 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3503)
!3505 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3503)
!3506 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3503)
!3508 = !DILocation(line: 50, column: 5, scope: !2203, inlinedAt: !3499)
!3509 = !DILocation(line: 50, column: 29, scope: !2203, inlinedAt: !3499)
!3510 = !DILocation(line: 0, scope: !2203, inlinedAt: !3499)
!3511 = !DILocation(line: 52, column: 8, scope: !2203, inlinedAt: !3499)
!3512 = !DILocation(line: 55, column: 3, scope: !2203, inlinedAt: !3499)
!3513 = !DILocation(line: 53, column: 17, scope: !2241, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 55, column: 15, scope: !2203, inlinedAt: !3499)
!3515 = !DILocation(line: 54, column: 46, scope: !2241, inlinedAt: !3514)
!3516 = !DILocation(line: 54, column: 19, scope: !2241, inlinedAt: !3514)
!3517 = !DILocation(line: 14, column: 13, scope: !2473, inlinedAt: !3188)
!3518 = !DILocation(line: 14, column: 11, scope: !2473, inlinedAt: !3188)
!3519 = !DILocation(line: 14, column: 12, scope: !2473, inlinedAt: !3188)
!3520 = !DILocation(line: 215, column: 17, scope: !2478, inlinedAt: !3187)
!3521 = !DILocation(line: 216, column: 12, scope: !2478, inlinedAt: !3187)
!3522 = !DILocation(line: 217, column: 2, scope: !2478, inlinedAt: !3187)
!3523 = !DILocation(line: 13, column: 26, scope: !2473, inlinedAt: !3188)
!3524 = !DILocation(line: 13, column: 14, scope: !2473, inlinedAt: !3188)
!3525 = !DILocation(line: 13, column: 16, scope: !2473, inlinedAt: !3188)
!3526 = !DILocation(line: 0, scope: !2473, inlinedAt: !3188)
!3527 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !123, file: !123, line: 420, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3528)
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DILocalVariable(name: "s", arg: 1, scope: !3527, file: !123, line: 420, type: !60)
!3530 = !DILocalVariable(name: "mask", scope: !3527, file: !123, line: 427, type: !43)
!3531 = !DILocalVariable(name: "val", scope: !3527, file: !123, line: 428, type: !43)
!3532 = !DILocalVariable(name: "swapped", scope: !3527, file: !123, line: 429, type: !47)
!3533 = !DILocation(line: 420, column: 6, scope: !3527)
!3534 = !DILocation(line: 0, scope: !3527)
!3535 = !DILocation(line: 427, column: 31, scope: !3527)
!3536 = !DILocation(line: 427, column: 3, scope: !3527)
!3537 = !DILocation(line: 147, column: 18, scope: !2408, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 428, column: 30, scope: !3527)
!3539 = !DILocation(line: 147, column: 53, scope: !2408, inlinedAt: !3538)
!3540 = !DILocation(line: 183, column: 6, scope: !2416, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 147, column: 51, scope: !2408, inlinedAt: !3538)
!3542 = !DILocation(line: 428, column: 3, scope: !3527)
!3543 = !DILocation(line: 429, column: 45, scope: !3527)
!3544 = !DILocation(line: 429, column: 50, scope: !3527)
!3545 = !DILocation(line: 429, column: 54, scope: !3527)
!3546 = !DILocation(line: 429, column: 53, scope: !3527)
!3547 = !DILocation(line: 156, column: 18, scope: !2270, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 429, column: 44, scope: !3527)
!3549 = !DILocation(line: 157, column: 31, scope: !2270, inlinedAt: !3548)
!3550 = !DILocation(line: 157, column: 36, scope: !2270, inlinedAt: !3548)
!3551 = !DILocation(line: 157, column: 41, scope: !2270, inlinedAt: !3548)
!3552 = !DILocation(line: 99, column: 6, scope: !2282, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 157, column: 29, scope: !2270, inlinedAt: !3548)
!3554 = !DILocation(line: 429, column: 3, scope: !3527)
!3555 = !DILocation(line: 430, column: 6, scope: !3527)
!3556 = !DILocation(line: 153, column: 18, scope: !2214, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 437, column: 21, scope: !3527)
!3558 = !DILocation(line: 153, column: 69, scope: !2214, inlinedAt: !3557)
!3559 = !DILocation(line: 153, column: 74, scope: !2214, inlinedAt: !3557)
!3560 = !DILocation(line: 77, column: 6, scope: !2226, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 153, column: 67, scope: !2214, inlinedAt: !3557)
!3562 = !DILocation(line: 437, column: 25, scope: !3527)
!3563 = !DILocation(line: 58, column: 17, scope: !2401, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 441, column: 22, scope: !3527)
!3565 = !DILocation(line: 59, column: 50, scope: !2401, inlinedAt: !3564)
!3566 = !DILocation(line: 59, column: 23, scope: !2401, inlinedAt: !3564)
!3567 = !DILocation(line: 443, column: 2, scope: !3527)
!3568 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3569, file: !3569, line: 6, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3570)
!3569 = !DIFile(filename: "CALCULATE_VOLUME_DODECAHEDRON_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/CALCULATE_VOLUME_DODECAHEDRON")
!3570 = !{!3571}
!3571 = !DILocalVariable(name: "side", arg: 1, scope: !3568, file: !3569, line: 6, type: !1739)
!3572 = !DILocation(line: 6, column: 6, scope: !3568)
!3573 = !DILocation(line: 7, column: 60, scope: !3568)
!3574 = !DILocation(line: 7, column: 59, scope: !3568)
!3575 = !DILocation(line: 7, column: 51, scope: !3568)
!3576 = !DILocation(line: 7, column: 41, scope: !3568)
!3577 = !DILocation(line: 7, column: 2, scope: !3568)
