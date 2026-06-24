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
    #dbg_value(i64 %exp, !1746, !DIExpression(), !1754)
    #dbg_value(double %frac, !1750, !DIExpression(), !1756)
  %0 = fcmp oeq double %frac, 0.000000e+00, !dbg !1757
  br i1 %0, label %math.ldexp.exit, label %switch.next.i, !dbg !1758

switch.next.i:                                    ; preds = %entry
    #dbg_value(double %frac, !1750, !DIExpression(), !1759)
    #dbg_value(double %frac, !1760, !DIExpression(), !1765)
    #dbg_value(i64 0, !1764, !DIExpression(), !1767)
  %1 = tail call double @llvm.fabs.f64(double %frac), !dbg !1768
    #dbg_value(double %1, !1760, !DIExpression(), !1769)
  %2 = fcmp ogt double %1, 0x7FEFFFFFFFFFFFFF, !dbg !1770
    #dbg_value(double %frac, !1750, !DIExpression(), !1771)
  %3 = fcmp uno double %frac, 0.000000e+00
  %or.cond.i = or i1 %3, %2, !dbg !1758
  br i1 %or.cond.i, label %math.ldexp.exit, label %switch.next2.i, !dbg !1758

switch.next2.i:                                   ; preds = %switch.next.i
    #dbg_value(double %frac, !1750, !DIExpression(), !1772)
    #dbg_value(double %frac, !1773, !DIExpression(), !1778)
  %4 = fcmp olt double %1, 0x10000000000000, !dbg !1780
  %5 = fmul double %frac, 0x4330000000000000, !dbg !1781
  %.pn3.i.i = select i1 %4, double %5, double %frac, !dbg !1781
  %.pn1.i.i = select i1 %4, i64 -52, i64 0, !dbg !1781
    #dbg_value(double %.pn3.i.i, !1750, !DIExpression(), !1782)
    #dbg_value(i64 %.pn1.i.i, !1751, !DIExpression(), !1783)
    #dbg_value(i64 poison, !1746, !DIExpression(), !1784)
    #dbg_value(double %.pn3.i.i, !1785, !DIExpression(), !1789)
  %.cast.i.i = bitcast double %.pn3.i.i to i64, !dbg !1791
    #dbg_value(i64 %.cast.i.i, !1752, !DIExpression(), !1792)
  %6 = lshr i64 %.cast.i.i, 52, !dbg !1793
  %7 = and i64 %6, 2047, !dbg !1794
  %8 = add i64 %exp, -1023, !dbg !1795
  %9 = add i64 %8, %.pn1.i.i, !dbg !1784
  %10 = add i64 %9, %7, !dbg !1796
    #dbg_value(i64 %10, !1746, !DIExpression(), !1797)
  %11 = icmp slt i64 %10, -1075, !dbg !1798
  br i1 %11, label %if.then.i, label %if.done.i, !dbg !1758

if.then.i:                                        ; preds = %switch.next2.i
    #dbg_value(double %.pn3.i.i, !1750, !DIExpression(), !1799)
    #dbg_value(double 0.000000e+00, !1800, !DIExpression(), !1807)
    #dbg_value(double %.pn3.i.i, !1806, !DIExpression(), !1809)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1815)
  %.cast.i2.i.i = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.pn3.i.i), !dbg !1817
  br label %math.ldexp.exit, !dbg !1818

if.done.i:                                        ; preds = %switch.next2.i
    #dbg_value(i64 %10, !1746, !DIExpression(), !1819)
  %12 = icmp sgt i64 %10, 1023, !dbg !1820
  br i1 %12, label %if.then3.i, label %if.done6.i, !dbg !1758

if.then3.i:                                       ; preds = %if.done.i
    #dbg_value(double %.pn3.i.i, !1750, !DIExpression(), !1821)
  %13 = fcmp olt double %.pn3.i.i, 0.000000e+00, !dbg !1822
  br i1 %13, label %math.ldexp.exit, label %if.done5.i, !dbg !1758

if.done5.i:                                       ; preds = %if.then3.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !1823)
  br label %math.ldexp.exit, !dbg !1832

if.done6.i:                                       ; preds = %if.done.i
    #dbg_value(double 1.000000e+00, !1753, !DIExpression(), !1833)
    #dbg_value(i64 %10, !1746, !DIExpression(), !1834)
  %14 = icmp slt i64 %10, -1022, !dbg !1835
  %spec.select1.i = select i1 %14, double 0x3CA0000000000000, double 1.000000e+00, !dbg !1758
  %15 = and i64 %.cast.i.i, -9218868437227405313, !dbg !1836
    #dbg_value(i64 %15, !1752, !DIExpression(), !1836)
    #dbg_value(i64 poison, !1746, !DIExpression(), !1837)
  %16 = shl nsw i64 %10, 52, !dbg !1838
  %17 = add nsw i64 %16, 238690780250636288, !dbg !1838
  %18 = select i1 %14, i64 %17, i64 %16, !dbg !1838
  %19 = add i64 %18, 4607182418800017408, !dbg !1838
  %20 = or i64 %19, %15, !dbg !1839
    #dbg_value(double %spec.select1.i, !1753, !DIExpression(), !1840)
    #dbg_value(i64 %20, !1752, !DIExpression(), !1841)
    #dbg_value(i64 %20, !1810, !DIExpression(), !1842)
  %.cast.i2.i = bitcast i64 %20 to double, !dbg !1844
  %21 = fmul double %spec.select1.i, %.cast.i2.i, !dbg !1845
  br label %math.ldexp.exit, !dbg !1846

math.ldexp.exit:                                  ; preds = %entry, %switch.next.i, %if.then.i, %if.then3.i, %if.done5.i, %if.done6.i
  %common.ret.op.i = phi double [ %.cast.i2.i.i, %if.then.i ], [ 0x7FF0000000000000, %if.done5.i ], [ %21, %if.done6.i ], [ %frac, %entry ], [ %frac, %switch.next.i ], [ 0xFFF0000000000000, %if.then3.i ]
  ret double %common.ret.op.i, !dbg !1847
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define internal fastcc { double, i64 } @math.Frexp(double %f) unnamed_addr #1 !dbg !1848 {
entry:
    #dbg_value(double %f, !1852, !DIExpression(), !1853)
    #dbg_value(double %f, !1852, !DIExpression(), !1854)
    #dbg_value(double %f, !1855, !DIExpression(), !1861)
    #dbg_value(double %f, !1855, !DIExpression(), !1863)
  %0 = fcmp oeq double %f, 0.000000e+00, !dbg !1864
  br i1 %0, label %math.frexp.exit, label %switch.next.i, !dbg !1865

switch.next.i:                                    ; preds = %entry
    #dbg_value(double %f, !1855, !DIExpression(), !1866)
    #dbg_value(double %f, !1760, !DIExpression(), !1867)
    #dbg_value(i64 0, !1764, !DIExpression(), !1867)
    #dbg_value(i64 0, !1764, !DIExpression(), !1869)
  %1 = tail call double @llvm.fabs.f64(double %f), !dbg !1870
    #dbg_value(double %1, !1760, !DIExpression(), !1871)
  %2 = fcmp ogt double %1, 0x7FEFFFFFFFFFFFFF, !dbg !1872
    #dbg_value(double %f, !1855, !DIExpression(), !1873)
  %3 = fcmp uno double %f, 0.000000e+00
  %or.cond.i = or i1 %3, %2, !dbg !1865
  br i1 %or.cond.i, label %math.frexp.exit, label %switch.next2.i, !dbg !1865

switch.next2.i:                                   ; preds = %switch.next.i
    #dbg_value(double %f, !1855, !DIExpression(), !1874)
    #dbg_value(double %f, !1773, !DIExpression(), !1875)
    #dbg_value(double %f, !1773, !DIExpression(), !1877)
  %4 = fcmp olt double %1, 0x10000000000000, !dbg !1878
  %5 = fmul double %f, 0x4330000000000000, !dbg !1879
  %.pn3.i.i = select i1 %4, double %5, double %f, !dbg !1879
    #dbg_value(double %.pn3.i.i, !1855, !DIExpression(), !1880)
    #dbg_value(i64 poison, !1858, !DIExpression(), !1881)
    #dbg_value(double %.pn3.i.i, !1855, !DIExpression(), !1882)
    #dbg_value(double %.pn3.i.i, !1785, !DIExpression(), !1883)
  %.cast.i.i = bitcast double %.pn3.i.i to i64, !dbg !1885
    #dbg_value(i64 %.cast.i.i, !1859, !DIExpression(), !1886)
    #dbg_value(i64 %.cast.i.i, !1859, !DIExpression(), !1887)
  %6 = lshr i64 %.cast.i.i, 52, !dbg !1888
  %7 = and i64 %6, 2047, !dbg !1889
  %8 = select i1 %4, i64 -1074, i64 -1022, !dbg !1890
  %9 = add nsw i64 %7, %8, !dbg !1891
    #dbg_value(i64 %9, !1858, !DIExpression(), !1891)
  %10 = and i64 %.cast.i.i, -9218868437227405313, !dbg !1892
    #dbg_value(i64 %10, !1859, !DIExpression(), !1892)
  %11 = or disjoint i64 %10, 4602678819172646912, !dbg !1893
    #dbg_value(i64 %11, !1859, !DIExpression(), !1893)
    #dbg_value(i64 %11, !1859, !DIExpression(), !1894)
    #dbg_value(i64 %11, !1810, !DIExpression(), !1895)
  %.cast.i3.i = bitcast i64 %11 to double, !dbg !1897
    #dbg_value(double %.cast.i3.i, !1860, !DIExpression(), !1898)
  br label %math.frexp.exit, !dbg !1899

math.frexp.exit:                                  ; preds = %entry, %switch.next.i, %switch.next2.i
  %f.pn.i = phi double [ %.cast.i3.i, %switch.next2.i ], [ %f, %entry ], [ %f, %switch.next.i ]
  %.pn1.i = phi i64 [ %9, %switch.next2.i ], [ 0, %entry ], [ 0, %switch.next.i ]
  %.pn.i = insertvalue { double, i64 } zeroinitializer, double %f.pn.i, 0, !dbg !1865
  %common.ret.op.i = insertvalue { double, i64 } %.pn.i, i64 %.pn1.i, 1, !dbg !1865
  ret { double, i64 } %common.ret.op.i, !dbg !1900
}

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #2

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #2

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #3 !dbg !1901 {
entry:
    #dbg_value(ptr %m, !1906, !DIExpression(), !1908)
  %0 = icmp eq ptr %m, null, !dbg !1909
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1909

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1910, !DIExpression(), !1918)
    #dbg_value(i32 0, !1917, !DIExpression(), !1920)
    #dbg_value(ptr %m, !1921, !DIExpression(), !1929)
    #dbg_value(i32 0, !1928, !DIExpression(), !1929)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1929
    #dbg_value(i32 %1, !1907, !DIExpression(), !1931)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1932

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  tail call fastcc void @runtime._panic(), !dbg !1933
  unreachable, !dbg !1933

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1906, !DIExpression(), !1934)
    #dbg_value(ptr %m, !1935, !DIExpression(), !1942)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #16, !dbg !1944
  br label %if.done, !dbg !1932

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1945

gep.throw:                                        ; preds = %entry
  tail call fastcc void @runtime.nilPanic(), !dbg !1909
  unreachable, !dbg !1909
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #2

declare ptr @tinygo_task_current() local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #3 !dbg !1946 {
entry:
    #dbg_value(ptr %t, !1950, !DIExpression(), !1955)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1956, !DIExpression(), !1960)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1962, !DIExpression(), !1969)
    #dbg_value(i32 0, !1967, !DIExpression(), !1971)
    #dbg_value(i32 1, !1968, !DIExpression(), !1972)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1973, !DIExpression(), !1980)
    #dbg_value(i32 0, !1978, !DIExpression(), !1980)
    #dbg_value(i32 1, !1979, !DIExpression(), !1980)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1980
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1980
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i", !dbg !1982

"(*sync/atomic.Uint32).Swap.exit.preheader.i":    ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1956, !DIExpression(), !1983)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1910, !DIExpression(), !1984)
    #dbg_value(i32 2, !1917, !DIExpression(), !1986)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1921, !DIExpression(), !1987)
    #dbg_value(i32 2, !1928, !DIExpression(), !1987)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1987
  %.not4.i = icmp eq i32 %2, 0, !dbg !1989
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1982

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i", %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1956, !DIExpression(), !1990)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1991, !DIExpression(), !1997)
    #dbg_value(i32 2, !1996, !DIExpression(), !1999)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #16, !dbg !2000
    #dbg_value(ptr @"internal/task.activeTaskLock", !1910, !DIExpression(), !1984)
    #dbg_value(i32 2, !1917, !DIExpression(), !1986)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1921, !DIExpression(), !1987)
    #dbg_value(i32 2, !1928, !DIExpression(), !1987)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1987
  %.not.i = icmp eq i32 %3, 0, !dbg !1989
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1982

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %"(*sync/atomic.Uint32).Swap.exit.preheader.i"
    #dbg_value(i1 false, !1951, !DIExpression(), !2001)
    #dbg_value(ptr @"internal/task.activeTasks", !1952, !DIExpression(), !2002)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2003
  %.not.not6 = icmp eq ptr %4, null, !dbg !2004
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !2005

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !2006
    #dbg_value(ptr %5, !1952, !DIExpression(), !2007)
  %6 = load ptr, ptr %5, align 8, !dbg !2003
  %.not.not = icmp eq ptr %6, null, !dbg !2004
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !2005

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1952, !DIExpression(), !2008)
    #dbg_value(ptr %t, !1950, !DIExpression(), !2009)
  %9 = icmp eq ptr %7, %t, !dbg !2010
    #dbg_value(ptr %7, !1952, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !2011)
  br i1 %9, label %store.next, label %for.loop, !dbg !2005

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1952, !DIExpression(), !2012)
    #dbg_value(ptr %t, !1950, !DIExpression(), !2013)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !2014
  %11 = load ptr, ptr %10, align 8, !dbg !2014
  store ptr %11, ptr %8, align 8, !dbg !2015
    #dbg_value(i1 true, !1951, !DIExpression(), !2016)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2017
  %13 = add i32 %12, -1, !dbg !2017
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !2017
    #dbg_value(i32 %13, !1954, !DIExpression(), !2017)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1906, !DIExpression(), !2018)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1910, !DIExpression(), !2020)
    #dbg_value(i32 0, !1917, !DIExpression(), !2022)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1921, !DIExpression(), !2023)
    #dbg_value(i32 0, !1928, !DIExpression(), !2023)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2023
    #dbg_value(i32 %14, !1907, !DIExpression(), !2025)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !2026

if.then.i:                                        ; preds = %store.next
  tail call fastcc void @runtime._panic(), !dbg !2027
  unreachable, !dbg !2027

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1906, !DIExpression(), !2028)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1935, !DIExpression(), !2029)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #16, !dbg !2031
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !2026

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1951, !DIExpression(), !2032)
  ret void, !dbg !2033

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2017
  %16 = add i32 %15, -1, !dbg !2017
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !2017
    #dbg_value(i32 %13, !1954, !DIExpression(), !2017)
  tail call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !2034
    #dbg_value(i1 poison, !1951, !DIExpression(), !2032)
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !2035
  unreachable, !dbg !2005
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #2

declare void @tinygo_scanCurrentStack() local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #3 !dbg !2036 {
entry:
    #dbg_value(i32 %sig, !2040, !DIExpression(), !2042)
  %0 = tail call ptr @tinygo_task_current() #16, !dbg !2043
    #dbg_value(ptr %0, !2047, !DIExpression(), !2049)
  %1 = icmp eq ptr %0, null, !dbg !2050
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2051

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2052
  unreachable, !dbg !2051

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2047, !DIExpression(), !2053)
  %2 = tail call ptr @llvm.stacksave.p0(), !dbg !2054
  %3 = ptrtoint ptr %2 to i64, !dbg !2057
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2058
  store i64 %3, ptr %4, align 8, !dbg !2058
    #dbg_value(i64 %3, !2041, !DIExpression(), !2058)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2059, !DIExpression(), !2065)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2067, !DIExpression(), !2071)
    #dbg_value(i32 -1, !2070, !DIExpression(), !2073)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2074, !DIExpression(), !2078)
    #dbg_value(i32 -1, !2077, !DIExpression(), !2078)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2078
  %6 = icmp eq i32 %5, 1, !dbg !2080
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !2081

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2059, !DIExpression(), !2082)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2083, !DIExpression(), !2086)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #16, !dbg !2088
  br label %"(*internal/task.waitGroup).done.exit", !dbg !2081

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !2089, !DIExpression(), !2094)
    #dbg_value(ptr @"internal/task.gcState", !2096, !DIExpression(), !2101)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2101
  %8 = icmp eq i32 %7, 1, !dbg !2103
  br i1 %8, label %for.body, label %for.done, !dbg !2104

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !1991, !DIExpression(), !2105)
    #dbg_value(i32 1, !1996, !DIExpression(), !2107)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #16, !dbg !2108
    #dbg_value(ptr @"internal/task.gcState", !2089, !DIExpression(), !2094)
    #dbg_value(ptr @"internal/task.gcState", !2096, !DIExpression(), !2101)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2101
  %10 = icmp eq i32 %9, 1, !dbg !2103
  br i1 %10, label %for.body, label %for.done, !dbg !2104

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2059, !DIExpression(), !2109)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2067, !DIExpression(), !2111)
    #dbg_value(i32 -1, !2070, !DIExpression(), !2113)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2074, !DIExpression(), !2114)
    #dbg_value(i32 -1, !2077, !DIExpression(), !2114)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !2114
  %12 = icmp eq i32 %11, 1, !dbg !2116
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !2117

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2059, !DIExpression(), !2118)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2083, !DIExpression(), !2119)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #16, !dbg !2121
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !2117

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !2122
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #4 !dbg !2123 {
entry:
    #dbg_value(ptr %msg.data, !2127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2128)
    #dbg_value(i64 %msg.len, !2127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2128)
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2129
    #dbg_value(%runtime._string poison, !2127, !DIExpression(), !2130)
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !2131
  unreachable, !dbg !2132
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #4 !dbg !2133 {
entry:
    #dbg_value(ptr %addr, !2137, !DIExpression(), !2139)
    #dbg_value(ptr %msg.data, !2138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2139)
    #dbg_value(i64 %msg.len, !2138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2139)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !2140
    #dbg_value(ptr %addr, !2137, !DIExpression(), !2141)
  %0 = ptrtoint ptr %addr to i64, !dbg !2142
  %1 = add i64 %0, -5, !dbg !2143
  tail call fastcc void @runtime.printptr(i64 %1), !dbg !2144
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !2145
    #dbg_value(%runtime._string poison, !2138, !DIExpression(), !2146)
  tail call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2147
  tail call fastcc void @runtime.printnl(), !dbg !2148
  tail call void @abort() #16, !dbg !2149
  unreachable, !dbg !2150
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #6 !dbg !2151 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2155
    #dbg_value(ptr %s.data, !2153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2162)
    #dbg_value(i64 %s.len, !2153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2162)
    #dbg_value(i64 0, !2154, !DIExpression(), !2163)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2164)
  br label %for.body, !dbg !2165

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2154, !DIExpression(), !2166)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2167)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2168
  %2 = load i8, ptr %1, align 1, !dbg !2168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2169
    #dbg_value(i8 %2, !2160, !DIExpression(), !2169)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2169
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #16, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2171
  %4 = add nuw nsw i64 %0, 1, !dbg !2172
    #dbg_value(i64 %4, !2154, !DIExpression(), !2173)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2174
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2165

for.done:                                         ; preds = %for.body
  ret void, !dbg !2175
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #6 !dbg !2176 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2183
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2185
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2187
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2189
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2191
    #dbg_value(i64 %ptr, !2180, !DIExpression(), !2194)
  %0 = icmp eq i64 %ptr, 0, !dbg !2195
  br i1 %0, label %for.body.i.preheader, label %if.done, !dbg !2196

for.body.i.preheader:                             ; preds = %entry
    #dbg_value(i64 0, !2154, !DIExpression(), !2197)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2198)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2199
    #dbg_value(i8 110, !2160, !DIExpression(), !2199)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2199
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2200
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2201
    #dbg_value(i64 1, !2154, !DIExpression(), !2202)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2199
    #dbg_value(i8 105, !2160, !DIExpression(), !2199)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2199
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2200
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2201
    #dbg_value(i64 2, !2154, !DIExpression(), !2202)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2199
    #dbg_value(i8 108, !2160, !DIExpression(), !2199)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2199
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2200
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2201
    #dbg_value(i64 3, !2154, !DIExpression(), !2202)
  br label %common.ret, !dbg !2196

common.ret:                                       ; preds = %if.done2, %for.body.i.preheader
  ret void, !dbg !2196

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2203
    #dbg_value(i8 48, !2160, !DIExpression(), !2203)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2203
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #16, !dbg !2204
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2205
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2206
    #dbg_value(i8 120, !2160, !DIExpression(), !2206)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2206
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #16, !dbg !2207
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2208
    #dbg_value(i64 0, !2181, !DIExpression(), !2209)
  br label %for.body, !dbg !2196

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2181, !DIExpression(), !2210)
    #dbg_value(i64 %7, !2180, !DIExpression(), !2211)
  %8 = lshr i64 %7, 60, !dbg !2212
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2213
    #dbg_value(i8 %9, !2182, !DIExpression(), !2214)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2215
  br i1 %10, label %if.then1, label %if.else, !dbg !2196

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2182, !DIExpression(), !2216)
  %11 = or disjoint i8 %9, 48, !dbg !2217
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2218
    #dbg_value(i8 %11, !2160, !DIExpression(), !2218)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2218
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #16, !dbg !2219
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2220
  br label %if.done2, !dbg !2196

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2221
    #dbg_value(i64 %13, !2180, !DIExpression(), !2221)
  %14 = add nuw nsw i64 %6, 1, !dbg !2222
    #dbg_value(i64 %14, !2181, !DIExpression(), !2210)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2223
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2196

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2182, !DIExpression(), !2224)
  %15 = add nuw nsw i8 %9, 87, !dbg !2225
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2226
    #dbg_value(i8 %15, !2160, !DIExpression(), !2226)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2226
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #16, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2228
  br label %if.done2, !dbg !2196
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #6 !dbg !2229 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2233
    #dbg_value(i8 10, !2160, !DIExpression(), !2234)
    #dbg_value(i8 10, !2160, !DIExpression(), !2233)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2233
    #dbg_value(i8 10, !2160, !DIExpression(), !2233)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #16, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2236
  ret void, !dbg !2237
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #4 !dbg !2238 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2239
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2240
  unreachable, !dbg !2241
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #10 !dbg !2242 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2263)
    #dbg_value(ptr @"internal/task$pack", !2247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2263)
    #dbg_value(i8 1, !2248, !DIExpression(), !2263)
  %0 = tail call ptr @tinygo_task_current() #16, !dbg !2264
    #dbg_value(ptr %0, !2047, !DIExpression(), !2266)
    #dbg_value(ptr %0, !2047, !DIExpression(), !2267)
  %1 = icmp eq ptr %0, null, !dbg !2268
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2269

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2270
  unreachable, !dbg !2269

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !2047, !DIExpression(), !2271)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2272
  %3 = load ptr, ptr %2, align 8, !dbg !2272
    #dbg_value(ptr %3, !2249, !DIExpression(), !2273)
    #dbg_value(ptr %3, !2249, !DIExpression(), !2274)
  %.not = icmp eq ptr %3, null, !dbg !2275
  br i1 %.not, label %if.done5, label %store.next, !dbg !2276

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2249, !DIExpression(), !2277)
    #dbg_value({ ptr, ptr } poison, !2247, !DIExpression(), !2278)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2279
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2279
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2279
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2279
    #dbg_value({ ptr, ptr } poison, !2261, !DIExpression(), !2279)
    #dbg_value(ptr %3, !2249, !DIExpression(), !2280)
    #dbg_value(i8 1, !2248, !DIExpression(), !2281)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2282
  store i8 1, ptr %5, align 1, !dbg !2282
    #dbg_value(i8 1, !2262, !DIExpression(), !2282)
    #dbg_value(ptr %3, !2249, !DIExpression(), !2283)
  tail call void @tinygo_longjmp(ptr nonnull %3) #16, !dbg !2284
  br label %if.done5, !dbg !2276

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2248, !DIExpression(), !2285)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2286
    #dbg_value({ ptr, ptr } poison, !2247, !DIExpression(), !2287)
  tail call fastcc void @runtime.printitf(), !dbg !2288
  tail call fastcc void @runtime.printnl(), !dbg !2289
  tail call void @abort() #16, !dbg !2290
  unreachable, !dbg !2291
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #6 !dbg !2292 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2323
    #dbg_value(ptr @"reflect/types.type:basic:string", !2296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2326)
    #dbg_value(ptr @"internal/task$pack", !2296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2326)
    #dbg_value({ ptr, ptr } poison, !2296, !DIExpression(), !2327)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2318, !DIExpression(), !2328)
    #dbg_value(ptr @"internal/task$string", !2153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2329)
    #dbg_value(i64 30, !2153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2329)
    #dbg_value(i64 0, !2154, !DIExpression(), !2330)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2331)
  br label %for.body.i, !dbg !2332

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2154, !DIExpression(), !2333)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2334)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2335
  %2 = load i8, ptr %1, align 1, !dbg !2335
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2336
    #dbg_value(i8 %2, !2160, !DIExpression(), !2336)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2336
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2338
  %4 = add nuw nsw i64 %0, 1, !dbg !2339
    #dbg_value(i64 %4, !2154, !DIExpression(), !2340)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2341
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2332

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2342
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #10 !dbg !2343 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2346)
    #dbg_value(ptr @"internal/task$pack", !2345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2346)
    #dbg_value({ ptr, ptr } poison, !2345, !DIExpression(), !2347)
  tail call fastcc void @runtime.panicOrGoexit(), !dbg !2348
  unreachable, !dbg !2349
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #1 !dbg !2350 {
entry:
    #dbg_value(double %x, !2352, !DIExpression(), !2354)
    #dbg_value(double %y, !2353, !DIExpression(), !2354)
    #dbg_value(double %x, !2352, !DIExpression(), !2355)
    #dbg_value(double %y, !2353, !DIExpression(), !2356)
    #dbg_value(double %x, !2357, !DIExpression(), !2361)
    #dbg_value(double %y, !2360, !DIExpression(), !2361)
    #dbg_value(double %x, !2357, !DIExpression(), !2363)
    #dbg_value(double %y, !2360, !DIExpression(), !2364)
    #dbg_value(double %x, !2365, !DIExpression(), !2375)
    #dbg_value(double %y, !2370, !DIExpression(), !2375)
    #dbg_value(i64 9218868437227405313, !2371, !DIExpression(), !2375)
    #dbg_value(i64 9223372036854775807, !2372, !DIExpression(), !2375)
  %.cast.i.i = bitcast double %x to i64, !dbg !2377
    #dbg_value(i64 %.cast.i.i, !2373, !DIExpression(), !2378)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2379
    #dbg_value(i64 %.cast2.i.i, !2374, !DIExpression(), !2380)
    #dbg_value(i64 %.cast.i.i, !2373, !DIExpression(), !2381)
    #dbg_value(i64 9218868437227405313, !2371, !DIExpression(), !2382)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2383
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2384

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2374, !DIExpression(), !2385)
    #dbg_value(i64 9218868437227405313, !2371, !DIExpression(), !2386)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2387
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2384

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2373, !DIExpression(), !2388)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2389
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2384
    #dbg_value(i64 %.cast2.i.i, !2374, !DIExpression(), !2390)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2391
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2384
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2384
    #dbg_value(i64 %spec.select.i.i, !2373, !DIExpression(), !2392)
    #dbg_value(i64 %6, !2374, !DIExpression(), !2393)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2394
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2384
  br label %runtime.minimumFloat64.exit, !dbg !2384

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2395
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #1 !dbg !2396 {
entry:
    #dbg_value(float %x, !2400, !DIExpression(), !2402)
    #dbg_value(float %y, !2401, !DIExpression(), !2402)
    #dbg_value(float %x, !2400, !DIExpression(), !2403)
    #dbg_value(float %y, !2401, !DIExpression(), !2404)
    #dbg_value(float %x, !2405, !DIExpression(), !2409)
    #dbg_value(float %y, !2408, !DIExpression(), !2409)
    #dbg_value(float %x, !2405, !DIExpression(), !2411)
    #dbg_value(float %y, !2408, !DIExpression(), !2412)
    #dbg_value(float %x, !2413, !DIExpression(), !2423)
    #dbg_value(float %y, !2418, !DIExpression(), !2423)
    #dbg_value(i32 2139095041, !2419, !DIExpression(), !2423)
    #dbg_value(i32 2147483647, !2420, !DIExpression(), !2423)
  %.cast.i.i = bitcast float %x to i32, !dbg !2425
    #dbg_value(i32 %.cast.i.i, !2421, !DIExpression(), !2426)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2427
    #dbg_value(i32 %.cast2.i.i, !2422, !DIExpression(), !2428)
    #dbg_value(i32 %.cast.i.i, !2421, !DIExpression(), !2429)
    #dbg_value(i32 2139095041, !2419, !DIExpression(), !2430)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2431
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2432

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2422, !DIExpression(), !2433)
    #dbg_value(i32 2139095041, !2419, !DIExpression(), !2434)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2435
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2432

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2421, !DIExpression(), !2436)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2437
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2432
    #dbg_value(i32 %.cast2.i.i, !2422, !DIExpression(), !2438)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2439
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2432
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2432
    #dbg_value(i32 %spec.select.i.i, !2421, !DIExpression(), !2440)
    #dbg_value(i32 %6, !2422, !DIExpression(), !2441)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2442
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2432
  br label %runtime.minimumFloat32.exit, !dbg !2432

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2443
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #1 !dbg !2444 {
entry:
    #dbg_value(double %x, !2446, !DIExpression(), !2448)
    #dbg_value(double %y, !2447, !DIExpression(), !2448)
    #dbg_value(double %x, !2446, !DIExpression(), !2449)
    #dbg_value(double %y, !2447, !DIExpression(), !2450)
    #dbg_value(double %x, !2451, !DIExpression(), !2455)
    #dbg_value(double %y, !2454, !DIExpression(), !2455)
    #dbg_value(double %x, !2451, !DIExpression(), !2457)
    #dbg_value(double %y, !2454, !DIExpression(), !2458)
    #dbg_value(double %x, !2459, !DIExpression(), !2468)
    #dbg_value(double %y, !2462, !DIExpression(), !2468)
    #dbg_value(i64 9218868437227405313, !2463, !DIExpression(), !2468)
    #dbg_value(i64 9223372036854775807, !2464, !DIExpression(), !2468)
  %.cast.i.i = bitcast double %x to i64, !dbg !2470
    #dbg_value(i64 %.cast.i.i, !2465, !DIExpression(), !2471)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2472
    #dbg_value(i64 %.cast6.i.i, !2466, !DIExpression(), !2473)
    #dbg_value(i64 %.cast.i.i, !2465, !DIExpression(), !2474)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2475
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2476
    #dbg_value(i64 %.cast6.i.i, !2466, !DIExpression(), !2477)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2478
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2476
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2476
    #dbg_value(i64 9218868437227405313, !2463, !DIExpression(), !2479)
    #dbg_value(i64 -9218868437227405314, !2467, !DIExpression(), !2480)
    #dbg_value(i64 %spec.select.i.i, !2465, !DIExpression(), !2481)
    #dbg_value(i64 -9218868437227405314, !2467, !DIExpression(), !2482)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2483
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2476

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2466, !DIExpression(), !2484)
    #dbg_value(i64 -9218868437227405314, !2467, !DIExpression(), !2485)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2486
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2476

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2465, !DIExpression(), !2487)
    #dbg_value(i64 %4, !2466, !DIExpression(), !2488)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2489
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2476
  br label %runtime.maximumFloat64.exit, !dbg !2476

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #1 !dbg !2491 {
entry:
    #dbg_value(float %x, !2493, !DIExpression(), !2495)
    #dbg_value(float %y, !2494, !DIExpression(), !2495)
    #dbg_value(float %x, !2493, !DIExpression(), !2496)
    #dbg_value(float %y, !2494, !DIExpression(), !2497)
    #dbg_value(float %x, !2498, !DIExpression(), !2502)
    #dbg_value(float %y, !2501, !DIExpression(), !2502)
    #dbg_value(float %x, !2498, !DIExpression(), !2504)
    #dbg_value(float %y, !2501, !DIExpression(), !2505)
    #dbg_value(float %x, !2506, !DIExpression(), !2515)
    #dbg_value(float %y, !2509, !DIExpression(), !2515)
    #dbg_value(i32 2139095041, !2510, !DIExpression(), !2515)
    #dbg_value(i32 2147483647, !2511, !DIExpression(), !2515)
  %.cast.i.i = bitcast float %x to i32, !dbg !2517
    #dbg_value(i32 %.cast.i.i, !2512, !DIExpression(), !2518)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2519
    #dbg_value(i32 %.cast6.i.i, !2513, !DIExpression(), !2520)
    #dbg_value(i32 %.cast.i.i, !2512, !DIExpression(), !2521)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2522
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2523
    #dbg_value(i32 %.cast6.i.i, !2513, !DIExpression(), !2524)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2525
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2523
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2523
    #dbg_value(i32 2139095041, !2510, !DIExpression(), !2526)
    #dbg_value(i32 -2139095042, !2514, !DIExpression(), !2527)
    #dbg_value(i32 %spec.select.i.i, !2512, !DIExpression(), !2528)
    #dbg_value(i32 -2139095042, !2514, !DIExpression(), !2529)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2530
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2523

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2513, !DIExpression(), !2531)
    #dbg_value(i32 -2139095042, !2514, !DIExpression(), !2532)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2533
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2523

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2512, !DIExpression(), !2534)
    #dbg_value(i32 %4, !2513, !DIExpression(), !2535)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2536
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2523
  br label %runtime.maximumFloat32.exit, !dbg !2523

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2537
}

declare void @GC_init() local_unnamed_addr #2

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #3 !dbg !2538 {
entry:
  %0 = tail call ptr @tinygo_task_current() #16, !dbg !2539
    #dbg_value(ptr %0, !2047, !DIExpression(), !2553)
  %1 = icmp eq ptr %0, null, !dbg !2554
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2555

if.then.i.i.i:                                    ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2556
  unreachable, !dbg !2555

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !2047, !DIExpression(), !2557)
    #dbg_value(ptr %0, !2543, !DIExpression(), !2558)
    #dbg_value(ptr @"internal/task.gcState", !2089, !DIExpression(), !2559)
    #dbg_value(ptr @"internal/task.gcState", !2096, !DIExpression(), !2561)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2561
  %3 = icmp eq i32 %2, 0, !dbg !2563
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2564

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1956, !DIExpression(), !2565)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1962, !DIExpression(), !2567)
    #dbg_value(i32 0, !1967, !DIExpression(), !2569)
    #dbg_value(i32 1, !1968, !DIExpression(), !2570)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1973, !DIExpression(), !2571)
    #dbg_value(i32 0, !1978, !DIExpression(), !2571)
    #dbg_value(i32 1, !1979, !DIExpression(), !2571)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2571
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2571
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", !dbg !2573

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i": ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1956, !DIExpression(), !2574)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1910, !DIExpression(), !2575)
    #dbg_value(i32 2, !1917, !DIExpression(), !2577)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1921, !DIExpression(), !2578)
    #dbg_value(i32 2, !1928, !DIExpression(), !2578)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2578
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2580
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2573

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1956, !DIExpression(), !2581)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1991, !DIExpression(), !2582)
    #dbg_value(i32 2, !1996, !DIExpression(), !2584)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #16, !dbg !2585
    #dbg_value(ptr @"internal/task.activeTaskLock", !1910, !DIExpression(), !2575)
    #dbg_value(i32 2, !1917, !DIExpression(), !2577)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1921, !DIExpression(), !2578)
    #dbg_value(i32 2, !1928, !DIExpression(), !2578)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2578
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2580
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2573

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2586, !DIExpression(), !2590)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2089, !DIExpression(), !2592)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2096, !DIExpression(), !2594)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2594
  %9 = icmp eq i32 %8, 0, !dbg !2596
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2597

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2586, !DIExpression(), !2598)
    #dbg_value(i32 %10, !2589, !DIExpression(), !2599)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1991, !DIExpression(), !2600)
    #dbg_value(i32 %10, !1996, !DIExpression(), !2602)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #16, !dbg !2603
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2089, !DIExpression(), !2592)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2096, !DIExpression(), !2594)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2594
    #dbg_value(i32 %11, !2589, !DIExpression(), !2604)
  %12 = icmp eq i32 %11, 0, !dbg !2596
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2597

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2605, !DIExpression(), !2609)
    #dbg_value(i32 1, !2608, !DIExpression(), !2611)
    #dbg_value(ptr @"internal/task.gcState", !2612, !DIExpression(), !2616)
    #dbg_value(i32 1, !2615, !DIExpression(), !2616)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2616
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2618
    #dbg_value(i32 %13, !2544, !DIExpression(), !2618)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2619
    #dbg_value(%"internal/task.Semaphore" poison, !2545, !DIExpression(), !2619)
    #dbg_value(ptr poison, !2546, !DIExpression(), !2620)
    #dbg_value(ptr poison, !2547, !DIExpression(), !2621)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2622
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2623
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2564

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2547, !DIExpression(), !2624)
    #dbg_value(ptr %0, !2543, !DIExpression(), !2625)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2626
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2564

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2547, !DIExpression(), !2627)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2628
  %17 = load ptr, ptr %16, align 8, !dbg !2628
  tail call void @tinygo_task_send_gc_signal(ptr %17) #16, !dbg !2629
  br label %deref.next15.i.i, !dbg !2564

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2547, !DIExpression(), !2630)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2631
    #dbg_value(ptr poison, !2547, !DIExpression(), !2632)
  %19 = load ptr, ptr %18, align 8, !dbg !2622
    #dbg_value(ptr %19, !2547, !DIExpression(), !2633)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2623
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2564

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2586, !DIExpression(), !2634)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2089, !DIExpression(), !2636)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2096, !DIExpression(), !2638)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2638
  %21 = icmp eq i32 %20, 0, !dbg !2640
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2641

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2586, !DIExpression(), !2642)
    #dbg_value(i32 %22, !2589, !DIExpression(), !2643)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1991, !DIExpression(), !2644)
    #dbg_value(i32 %22, !1996, !DIExpression(), !2646)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #16, !dbg !2647
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2089, !DIExpression(), !2636)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2096, !DIExpression(), !2638)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2638
    #dbg_value(i32 %23, !2589, !DIExpression(), !2648)
  %24 = icmp eq i32 %23, 0, !dbg !2640
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2641

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2546, !DIExpression(), !2649)
    #dbg_value(ptr poison, !2548, !DIExpression(), !2650)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2651
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2652
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2564

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2548, !DIExpression(), !2653)
    #dbg_value(ptr %0, !2543, !DIExpression(), !2654)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2655
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2564

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2548, !DIExpression(), !2656)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2657
  %28 = load i64, ptr %27, align 8, !dbg !2657
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2658
  %30 = load i64, ptr %29, align 8, !dbg !2658
    #dbg_value(i64 %28, !2659, !DIExpression(), !2665)
    #dbg_value(i64 %30, !2664, !DIExpression(), !2667)
  tail call void @GC_push_all(i64 %28, i64 %30) #16, !dbg !2668
  br label %deref.next33.i.i, !dbg !2564

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2548, !DIExpression(), !2669)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2670
    #dbg_value(ptr poison, !2548, !DIExpression(), !2671)
  %32 = load ptr, ptr %31, align 8, !dbg !2651
    #dbg_value(ptr %32, !2548, !DIExpression(), !2672)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2652
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2564

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  tail call void @tinygo_scanCurrentStack() #16, !dbg !2673
    #dbg_value(ptr undef, !2674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2706)
    #dbg_value(ptr poison, !2674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2706)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2680, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2710)
    #dbg_value(i64 0, !2681, !DIExpression(), !2711)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2712
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2713
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2714

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2715
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2680, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2710)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2716
    #dbg_value(i64 %35, !2680, !DIExpression(), !2710)
  %36 = inttoptr i64 %35 to ptr, !dbg !2717
    #dbg_value(ptr %36, !2680, !DIExpression(), !2710)
  br label %if.then.i.i.i.i, !dbg !2718

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i16 [ %51, %if.done.i.i.i.i ], [ %33, %if.then.preheader.i.i.i.i ]
  %38 = phi i64 [ %55, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %39 = phi ptr [ %54, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %38, !2681, !DIExpression(), !2719)
    #dbg_value(ptr %39, !2680, !DIExpression(), !2720)
    #dbg_value(ptr %39, !2682, !DIExpression(), !2721)
  %40 = icmp eq ptr %39, null, !dbg !2718
  br i1 %40, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2718

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %41 = load i32, ptr %39, align 4, !dbg !2718
  %42 = icmp eq i32 %41, 1, !dbg !2722
  br i1 %42, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2714

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %39, !2682, !DIExpression(), !2723)
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 4, !dbg !2724
  %44 = load i32, ptr %43, align 4, !dbg !2724
  %45 = and i32 %44, 2, !dbg !2725
  %.not.i.i.i.i = icmp eq i32 %45, 0, !dbg !2726
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2714

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %39, !2682, !DIExpression(), !2727)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 16, !dbg !2728
  %47 = load i64, ptr %46, align 8, !dbg !2728
    #dbg_value({ ptr, ptr } poison, !2674, !DIExpression(), !2729)
    #dbg_value(i64 %47, !2695, !DIExpression(), !2730)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2731)
  %48 = getelementptr inbounds nuw i8, ptr %39, i64 40, !dbg !2732
  %49 = load i64, ptr %48, align 8, !dbg !2732
    #dbg_value(!DIArgList(i64 %47, i64 %49), !2696, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2731)
  %50 = add i64 %49, %47, !dbg !2733
    #dbg_value(i64 %50, !2696, !DIExpression(), !2731)
    #dbg_value(i64 %47, !2659, !DIExpression(), !2734)
    #dbg_value(i64 %50, !2664, !DIExpression(), !2736)
  tail call void @GC_push_all(i64 %47, i64 %50) #16, !dbg !2737
  %.pre.i.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2712
  br label %if.done.i.i.i.i, !dbg !2714

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
  %51 = phi i16 [ %.pre.i.i.i.i, %deref.next7.i.i.i.i ], [ %37, %deref.next5.i.i.i.i ], [ %37, %deref.next.i.i.i.i ], !dbg !2712
    #dbg_value(ptr %39, !2680, !DIExpression(), !2738)
  %52 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2739
  %53 = sext i16 %52 to i64, !dbg !2740
  %54 = getelementptr i8, ptr %39, i64 %53, !dbg !2740
    #dbg_value(ptr %54, !2680, !DIExpression(), !2741)
  %55 = add nuw nsw i64 %38, 1, !dbg !2742
    #dbg_value(i64 %55, !2681, !DIExpression(), !2719)
  %56 = zext i16 %51 to i64, !dbg !2743
  %57 = icmp samesign ult i64 %55, %56, !dbg !2713
  br i1 %57, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2714

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !2718
  unreachable, !dbg !2718

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2744
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #3 !dbg !2745 {
entry:
    #dbg_value(i64 %sp, !2748, !DIExpression(), !2749)
    #dbg_value(i64 %sp, !2748, !DIExpression(), !2750)
  %0 = tail call ptr @tinygo_task_current() #16, !dbg !2751
    #dbg_value(ptr %0, !2047, !DIExpression(), !2755)
    #dbg_value(ptr %0, !2047, !DIExpression(), !2756)
  %1 = icmp eq ptr %0, null, !dbg !2757
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2758

if.then.i.i:                                      ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2759
  unreachable, !dbg !2758

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !2047, !DIExpression(), !2760)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2761
  %3 = load i64, ptr %2, align 8, !dbg !2761
    #dbg_value(i64 %sp, !2659, !DIExpression(), !2762)
    #dbg_value(i64 %3, !2664, !DIExpression(), !2762)
    #dbg_value(i64 %sp, !2659, !DIExpression(), !2764)
    #dbg_value(i64 %3, !2664, !DIExpression(), !2765)
  tail call void @GC_push_all(i64 %sp, i64 %3) #16, !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #3 !dbg !2768 {
entry:
    #dbg_value(i32 %argc, !2772, !DIExpression(), !2777)
    #dbg_value(ptr %argv, !2773, !DIExpression(), !2777)
    #dbg_value(i32 %argc, !2772, !DIExpression(), !2778)
    #dbg_value(i32 %argc, !2774, !DIExpression(), !2779)
    #dbg_value(ptr %argv, !2773, !DIExpression(), !2780)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2781
    #dbg_value(ptr %argv, !2775, !DIExpression(), !2781)
  tail call void @tinygo_register_fatal_signals() #16, !dbg !2782
  %0 = tail call ptr @llvm.stacksave.p0(), !dbg !2783
  %1 = ptrtoint ptr %0 to i64, !dbg !2788
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2789
    #dbg_value(i64 %1, !2776, !DIExpression(), !2789)
  tail call fastcc void @runtime.runMain(), !dbg !2790
  ret i64 0, !dbg !2791
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #11 !dbg !2792 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2793
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2793
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #16, !dbg !2809
    #dbg_value(i32 %0, !2796, !DIExpression(), !2810)
    #dbg_value(i32 %0, !2796, !DIExpression(), !2811)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2812
    #dbg_value(i64 poison, !2801, !DIExpression(), !2813)
    #dbg_value(i64 poison, !2801, !DIExpression(), !2814)
    #dbg_value(i64 poison, !2802, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2815)
    #dbg_value(i64 poison, !2802, !DIExpression(), !2816)
    #dbg_value(i64 poison, !2803, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2817)
  tail call void @GC_init() #16, !dbg !2818
  tail call void @tinygo_runtime_bdwgc_init() #16, !dbg !2821
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2822
    #dbg_value(i64 %1, !2807, !DIExpression(), !2822)
    #dbg_value(i64 %1, !2823, !DIExpression(), !2827)
    #dbg_value(i64 %1, !2823, !DIExpression(), !2829)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2830
    #dbg_value(i64 %1, !2826, !DIExpression(), !2830)
  tail call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #16, !dbg !2831
  tail call void @main.main(ptr undef) #16, !dbg !2832
  ret void, !dbg !2833
}

declare void @main.main(ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #3 !dbg !2834 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2840
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2843
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2846
    #dbg_value(i64 %60, !2850, !DIExpression(), !2866)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2867
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2868
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2870
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2873
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2876
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2879
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2882
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2885
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2888
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2891
    #dbg_value(i32 %sig, !2838, !DIExpression(), !2894)
    #dbg_value(i64 %addr, !2839, !DIExpression(), !2895)
  %.not = icmp eq i64 %addr, 0, !dbg !2896
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2897

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2154, !DIExpression(), !2898)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2899)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2900
  %2 = load i8, ptr %1, align 1, !dbg !2900
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2901
    #dbg_value(i8 %2, !2160, !DIExpression(), !2901)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2901
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #16, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2903
  %4 = add nuw nsw i64 %0, 1, !dbg !2904
    #dbg_value(i64 %4, !2154, !DIExpression(), !2905)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2906
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2907

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2839, !DIExpression(), !2908)
  tail call fastcc void @runtime.printptr(i64 %addr), !dbg !2909
  br label %if.done2, !dbg !2897

if.done2:                                         ; preds = %for.body.i47, %runtime.printstring.exit
    #dbg_value(ptr poison, !2153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2910)
    #dbg_value(i64 16, !2153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2910)
    #dbg_value(i64 0, !2154, !DIExpression(), !2911)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2912)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 58, !2160, !DIExpression(), !2913)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 1, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 32, !2160, !DIExpression(), !2913)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 2, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 99, !2160, !DIExpression(), !2913)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 3, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 97, !2160, !DIExpression(), !2913)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 4, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 117, !2160, !DIExpression(), !2913)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 5, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 103, !2160, !DIExpression(), !2913)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 6, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 104, !2160, !DIExpression(), !2913)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 7, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 116, !2160, !DIExpression(), !2913)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 8, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 32, !2160, !DIExpression(), !2913)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 9, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 115, !2160, !DIExpression(), !2913)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 10, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 105, !2160, !DIExpression(), !2913)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 11, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 103, !2160, !DIExpression(), !2913)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 12, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 110, !2160, !DIExpression(), !2913)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 13, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 97, !2160, !DIExpression(), !2913)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 14, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 108, !2160, !DIExpression(), !2913)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 15, !2154, !DIExpression(), !2916)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2913
    #dbg_value(i8 32, !2160, !DIExpression(), !2913)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2913
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #16, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2915
    #dbg_value(i64 16, !2154, !DIExpression(), !2916)
    #dbg_value(i32 %sig, !2838, !DIExpression(), !2917)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2918
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2918
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2897

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !2923)
    #dbg_value(ptr @runtime.printLock, !1962, !DIExpression(), !2926)
    #dbg_value(i32 0, !1967, !DIExpression(), !2928)
    #dbg_value(i32 1, !1968, !DIExpression(), !2929)
    #dbg_value(ptr @runtime.printLock, !1973, !DIExpression(), !2930)
    #dbg_value(i32 0, !1978, !DIExpression(), !2930)
    #dbg_value(i32 1, !1979, !DIExpression(), !2930)
  br i1 %22, label %runtime.printlock.exit, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", !dbg !2932

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i":  ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !2933)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !2934)
    #dbg_value(i32 2, !1917, !DIExpression(), !2936)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !2937)
    #dbg_value(i32 2, !1928, !DIExpression(), !2937)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2937
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2939
  br i1 %.not4.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2932

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !2940)
    #dbg_value(ptr @runtime.printLock, !1991, !DIExpression(), !2941)
    #dbg_value(i32 2, !1996, !DIExpression(), !2943)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !2944
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !2934)
    #dbg_value(i32 2, !1917, !DIExpression(), !2936)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !2937)
    #dbg_value(i32 2, !1928, !DIExpression(), !2937)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2937
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2939
  br i1 %.not.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2932

runtime.printlock.exit:                           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i", %switch.body, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i"
    #dbg_value(ptr poison, !2153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2945)
    #dbg_value(i64 6, !2153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2945)
    #dbg_value(i64 0, !2154, !DIExpression(), !2946)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2947)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2948
    #dbg_value(i8 83, !2160, !DIExpression(), !2948)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2948
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i64 1, !2154, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2948
    #dbg_value(i8 73, !2160, !DIExpression(), !2948)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2948
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i64 2, !2154, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2948
    #dbg_value(i8 71, !2160, !DIExpression(), !2948)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2948
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i64 3, !2154, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2948
    #dbg_value(i8 66, !2160, !DIExpression(), !2948)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2948
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i64 4, !2154, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2948
    #dbg_value(i8 85, !2160, !DIExpression(), !2948)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2948
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i64 5, !2154, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2948
    #dbg_value(i8 83, !2160, !DIExpression(), !2948)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2948
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #16, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i64 6, !2154, !DIExpression(), !2951)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2952
    #dbg_value(i8 10, !2160, !DIExpression(), !2952)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2952
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #16, !dbg !2953
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2954
    #dbg_value(ptr @runtime.printLock, !1906, !DIExpression(), !2955)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !2959)
    #dbg_value(i32 0, !1917, !DIExpression(), !2961)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !2962)
    #dbg_value(i32 0, !1928, !DIExpression(), !2962)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2962
    #dbg_value(i32 %32, !1907, !DIExpression(), !2964)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %switch.done.sink.split
  ], !dbg !2965

if.then.i.i:                                      ; preds = %runtime.printlock.exit
  tail call fastcc void @runtime._panic(), !dbg !2966
  unreachable, !dbg !2966

switch.done.sink.split:                           ; preds = %runtime.printlock.exit, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #16, !dbg !2967
  br label %switch.done, !dbg !2970

switch.done:                                      ; preds = %switch.done.sink.split, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14, %runtime.printlock.exit
    #dbg_value(i32 %sig, !2838, !DIExpression(), !2971)
  tail call void @raise(i32 %sig) #16, !dbg !2970
  ret void, !dbg !2972

switch.body3:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !2973)
    #dbg_value(ptr @runtime.printLock, !1962, !DIExpression(), !2976)
    #dbg_value(i32 0, !1967, !DIExpression(), !2978)
    #dbg_value(i32 1, !1968, !DIExpression(), !2979)
    #dbg_value(ptr @runtime.printLock, !1973, !DIExpression(), !2980)
    #dbg_value(i32 0, !1978, !DIExpression(), !2980)
    #dbg_value(i32 1, !1979, !DIExpression(), !2980)
  br i1 %22, label %runtime.printlock.exit14, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", !dbg !2982

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10": ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !2983)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !2984)
    #dbg_value(i32 2, !1917, !DIExpression(), !2986)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !2987)
    #dbg_value(i32 2, !1928, !DIExpression(), !2987)
  %33 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2987
  %.not4.i.i11 = icmp eq i32 %33, 0, !dbg !2989
  br i1 %.not4.i.i11, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2982

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !2990)
    #dbg_value(ptr @runtime.printLock, !1991, !DIExpression(), !2991)
    #dbg_value(i32 2, !1996, !DIExpression(), !2993)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !2994
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !2984)
    #dbg_value(i32 2, !1917, !DIExpression(), !2986)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !2987)
    #dbg_value(i32 2, !1928, !DIExpression(), !2987)
  %34 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2987
  %.not.i.i13 = icmp eq i32 %34, 0, !dbg !2989
  br i1 %.not.i.i13, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2982

runtime.printlock.exit14:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i12", %switch.body3, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10"
    #dbg_value(ptr poison, !2153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2995)
    #dbg_value(i64 6, !2153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2995)
    #dbg_value(i64 0, !2154, !DIExpression(), !2996)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !2997)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2998
    #dbg_value(i8 83, !2160, !DIExpression(), !2998)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !2998
  %35 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3000
    #dbg_value(i64 1, !2154, !DIExpression(), !3001)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2998
    #dbg_value(i8 73, !2160, !DIExpression(), !2998)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2998
  %36 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3000
    #dbg_value(i64 2, !2154, !DIExpression(), !3001)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2998
    #dbg_value(i8 71, !2160, !DIExpression(), !2998)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !2998
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3000
    #dbg_value(i64 3, !2154, !DIExpression(), !3001)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2998
    #dbg_value(i8 73, !2160, !DIExpression(), !2998)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2998
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3000
    #dbg_value(i64 4, !2154, !DIExpression(), !3001)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2998
    #dbg_value(i8 76, !2160, !DIExpression(), !2998)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2998
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3000
    #dbg_value(i64 5, !2154, !DIExpression(), !3001)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2998
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2998
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #16, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3000
    #dbg_value(i64 6, !2154, !DIExpression(), !3001)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3002
    #dbg_value(i8 10, !2160, !DIExpression(), !3002)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !3002
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #16, !dbg !3003
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3004
    #dbg_value(ptr @runtime.printLock, !1906, !DIExpression(), !3005)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3008)
    #dbg_value(i32 0, !1917, !DIExpression(), !3010)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3011)
    #dbg_value(i32 0, !1928, !DIExpression(), !3011)
  %42 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3011
    #dbg_value(i32 %42, !1907, !DIExpression(), !3013)
  switch i32 %42, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %switch.done.sink.split
  ], !dbg !3014

if.then.i.i21:                                    ; preds = %runtime.printlock.exit14
  tail call fastcc void @runtime._panic(), !dbg !3015
  unreachable, !dbg !3015

switch.body5:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !3016)
    #dbg_value(ptr @runtime.printLock, !1962, !DIExpression(), !3019)
    #dbg_value(i32 0, !1967, !DIExpression(), !3021)
    #dbg_value(i32 1, !1968, !DIExpression(), !3022)
    #dbg_value(ptr @runtime.printLock, !1973, !DIExpression(), !3023)
    #dbg_value(i32 0, !1978, !DIExpression(), !3023)
    #dbg_value(i32 1, !1979, !DIExpression(), !3023)
  br i1 %22, label %runtime.printlock.exit27, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", !dbg !3025

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23": ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !3026)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3027)
    #dbg_value(i32 2, !1917, !DIExpression(), !3029)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3030)
    #dbg_value(i32 2, !1928, !DIExpression(), !3030)
  %43 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3030
  %.not4.i.i24 = icmp eq i32 %43, 0, !dbg !3032
  br i1 %.not4.i.i24, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3025

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !3033)
    #dbg_value(ptr @runtime.printLock, !1991, !DIExpression(), !3034)
    #dbg_value(i32 2, !1996, !DIExpression(), !3036)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !3037
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3027)
    #dbg_value(i32 2, !1917, !DIExpression(), !3029)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3030)
    #dbg_value(i32 2, !1928, !DIExpression(), !3030)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3030
  %.not.i.i26 = icmp eq i32 %44, 0, !dbg !3032
  br i1 %.not.i.i26, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3025

runtime.printlock.exit27:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i25", %switch.body5, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23"
    #dbg_value(ptr poison, !2153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 7, !2153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 0, !2154, !DIExpression(), !3039)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !3040)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 83, !2160, !DIExpression(), !3041)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %45 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 1, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 73, !2160, !DIExpression(), !3041)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %46 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 2, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 71, !2160, !DIExpression(), !3041)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %47 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 3, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 83, !2160, !DIExpression(), !3041)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %48 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 4, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 69, !2160, !DIExpression(), !3041)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 5, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 71, !2160, !DIExpression(), !3041)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 6, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3041
    #dbg_value(i8 86, !2160, !DIExpression(), !3041)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !3041
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #16, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3043
    #dbg_value(i64 7, !2154, !DIExpression(), !3044)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3045
    #dbg_value(i8 10, !2160, !DIExpression(), !3045)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !3045
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #16, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3047
    #dbg_value(ptr @runtime.printLock, !1906, !DIExpression(), !3048)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3051)
    #dbg_value(i32 0, !1917, !DIExpression(), !3053)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3054)
    #dbg_value(i32 0, !1928, !DIExpression(), !3054)
  %53 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3054
    #dbg_value(i32 %53, !1907, !DIExpression(), !3056)
  switch i32 %53, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %switch.done.sink.split
  ], !dbg !3057

if.then.i.i34:                                    ; preds = %runtime.printlock.exit27
  tail call fastcc void @runtime._panic(), !dbg !3058
  unreachable, !dbg !3058

switch.next6:                                     ; preds = %if.done2
    #dbg_value(i32 %sig, !2838, !DIExpression(), !3059)
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !3060)
    #dbg_value(ptr @runtime.printLock, !1962, !DIExpression(), !3063)
    #dbg_value(i32 0, !1967, !DIExpression(), !3065)
    #dbg_value(i32 1, !1968, !DIExpression(), !3066)
    #dbg_value(ptr @runtime.printLock, !1973, !DIExpression(), !3067)
    #dbg_value(i32 0, !1978, !DIExpression(), !3067)
    #dbg_value(i32 1, !1979, !DIExpression(), !3067)
  br i1 %22, label %runtime.printlock.exit40, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", !dbg !3069

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36": ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !3070)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3071)
    #dbg_value(i32 2, !1917, !DIExpression(), !3073)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3074)
    #dbg_value(i32 2, !1928, !DIExpression(), !3074)
  %54 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3074
  %.not4.i.i37 = icmp eq i32 %54, 0, !dbg !3076
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3069

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1956, !DIExpression(), !3077)
    #dbg_value(ptr @runtime.printLock, !1991, !DIExpression(), !3078)
    #dbg_value(i32 2, !1996, !DIExpression(), !3080)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #16, !dbg !3081
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3071)
    #dbg_value(i32 2, !1917, !DIExpression(), !3073)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3074)
    #dbg_value(i32 2, !1928, !DIExpression(), !3074)
  %55 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3074
  %.not.i.i39 = icmp eq i32 %55, 0, !dbg !3076
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3069

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36"
    #dbg_value(i32 %sig, !2864, !DIExpression(), !3082)
  %56 = icmp slt i32 %sig, 0, !dbg !3083
  br i1 %56, label %if.then.i, label %if.done.i, !dbg !3084

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3085
    #dbg_value(i8 45, !2160, !DIExpression(), !3085)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3085
  %57 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #16, !dbg !3086
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3087
    #dbg_value(i32 %sig, !2864, !DIExpression(), !3088)
  %58 = sub i32 0, %sig, !dbg !3089
    #dbg_value(i32 %58, !2864, !DIExpression(), !3090)
  br label %if.done.i, !dbg !3084

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %59 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %58, %if.then.i ], !dbg !3091
    #dbg_value(i32 %59, !2864, !DIExpression(), !3092)
    #dbg_value(i32 %59, !2860, !DIExpression(), !3093)
  %60 = zext i32 %59 to i64, !dbg !3094
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2867
    #dbg_value(i64 19, !2851, !DIExpression(), !3095)
    #dbg_value(i64 19, !2852, !DIExpression(), !3096)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2867
  br label %for.body.i.i.i, !dbg !3097

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2854, !DIExpression(), !3098)
  %61 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3099
  br i1 %61, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3097

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %62 = phi i64 [ 19, %if.done.i ], [ %70, %for.body.i.i.i ]
  %63 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %64 = phi i64 [ %60, %if.done.i ], [ %69, %for.body.i.i.i ]
    #dbg_value(i64 %62, !2852, !DIExpression(), !3100)
    #dbg_value(i64 %64, !2850, !DIExpression(), !3101)
  %65 = urem i64 %64, 10, !dbg !3102
  %66 = trunc nuw nsw i64 %65 to i8, !dbg !3103
  %67 = or disjoint i8 %66, 48, !dbg !3103
    #dbg_value(i8 %67, !2853, !DIExpression(), !3104)
  %68 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %62, !dbg !3105
  store i8 %67, ptr %68, align 1, !dbg !3105
  %.not.i.i.i = icmp eq i64 %65, 0, !dbg !3106
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %63, i64 %62, !dbg !3097
  %69 = udiv i64 %64, 10, !dbg !3107
    #dbg_value(i64 %69, !2850, !DIExpression(), !3107)
  %70 = add nsw i64 %62, -1, !dbg !3108
    #dbg_value(i64 %70, !2852, !DIExpression(), !3100)
  %.not23.i.i.i = icmp eq i64 %62, 0, !dbg !3109
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3097

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %71 = phi i64 [ %75, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %71, !2854, !DIExpression(), !3110)
  %72 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %71, !dbg !3111
  %73 = load i8, ptr %72, align 1, !dbg !3111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3112
    #dbg_value(i8 %73, !2160, !DIExpression(), !3112)
  store i8 %73, ptr %stackalloc.i.i.i.i, align 1, !dbg !3112
  %74 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #16, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3114
  %75 = add i64 %71, 1, !dbg !3115
    #dbg_value(i64 %75, !2854, !DIExpression(), !3098)
  %exitcond.not.i.i.i = icmp eq i64 %75, 20, !dbg !3099
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3097

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3117
    #dbg_value(i8 10, !2160, !DIExpression(), !3117)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3117
  %76 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #16, !dbg !3118
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3119
    #dbg_value(ptr @runtime.printLock, !1906, !DIExpression(), !3120)
    #dbg_value(ptr @runtime.printLock, !1910, !DIExpression(), !3123)
    #dbg_value(i32 0, !1917, !DIExpression(), !3125)
    #dbg_value(ptr @runtime.printLock, !1921, !DIExpression(), !3126)
    #dbg_value(i32 0, !1928, !DIExpression(), !3126)
  %77 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3126
    #dbg_value(i32 %77, !1907, !DIExpression(), !3128)
  switch i32 %77, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %switch.done.sink.split
  ], !dbg !3129

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  tail call fastcc void @runtime._panic(), !dbg !3130
  unreachable, !dbg !3130

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %78 = phi i64 [ %82, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %78, !2154, !DIExpression(), !3131)
    #dbg_value(%runtime._string poison, !2153, !DIExpression(), !3132)
  %79 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %78, !dbg !3133
  %80 = load i8, ptr %79, align 1, !dbg !3133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3134
    #dbg_value(i8 %80, !2160, !DIExpression(), !3134)
  store i8 %80, ptr %stackalloc.i.i46, align 1, !dbg !3134
  %81 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #16, !dbg !3135
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3136
  %82 = add nuw nsw i64 %78, 1, !dbg !3137
    #dbg_value(i64 %82, !2154, !DIExpression(), !3138)
  %exitcond.not.i48 = icmp eq i64 %82, 20, !dbg !3139
  br i1 %exitcond.not.i48, label %if.done2, label %for.body.i47, !dbg !3140
}

declare void @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #3 !dbg !3141 {
entry:
    #dbg_value(i32 %s, !3143, !DIExpression(), !3147)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3148

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3143, !DIExpression(), !3149)
    #dbg_value(i32 %shift.result, !3144, !DIExpression(), !3150)
    #dbg_value(ptr @runtime.receivedSignals, !2089, !DIExpression(), !3151)
    #dbg_value(ptr @runtime.receivedSignals, !2089, !DIExpression(), !3153)
    #dbg_value(ptr @runtime.receivedSignals, !2096, !DIExpression(), !3154)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3154
    #dbg_value(i32 %1, !3145, !DIExpression(), !3156)
    #dbg_value(i32 %1, !3145, !DIExpression(), !3157)
    #dbg_value(i32 %1, !3145, !DIExpression(), !3158)
    #dbg_value(i32 %shift.result, !3144, !DIExpression(), !3159)
  %2 = or i32 %1, %shift.result, !dbg !3160
    #dbg_value(ptr @runtime.receivedSignals, !1962, !DIExpression(), !3161)
    #dbg_value(i32 %1, !1967, !DIExpression(), !3161)
    #dbg_value(i32 %2, !1968, !DIExpression(), !3161)
    #dbg_value(ptr @runtime.receivedSignals, !1962, !DIExpression(), !3163)
    #dbg_value(i32 %1, !1967, !DIExpression(), !3164)
    #dbg_value(i32 %2, !1968, !DIExpression(), !3165)
    #dbg_value(ptr @runtime.receivedSignals, !1973, !DIExpression(), !3166)
    #dbg_value(i32 %1, !1978, !DIExpression(), !3166)
    #dbg_value(i32 %2, !1979, !DIExpression(), !3166)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3166
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3166
    #dbg_value(i1 %4, !3146, !DIExpression(), !3168)
    #dbg_value(i1 %4, !3146, !DIExpression(), !3169)
  br i1 %4, label %if.then, label %for.body, !dbg !3148

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1910, !DIExpression(), !3170)
    #dbg_value(i32 1, !1917, !DIExpression(), !3170)
    #dbg_value(ptr @runtime.signalFutex, !1910, !DIExpression(), !3172)
    #dbg_value(i32 1, !1917, !DIExpression(), !3173)
    #dbg_value(ptr @runtime.signalFutex, !1921, !DIExpression(), !3174)
    #dbg_value(i32 1, !1928, !DIExpression(), !3174)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3174
  %6 = icmp eq i32 %5, 0, !dbg !3176
  br i1 %6, label %if.then1, label %if.done, !dbg !3148

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !2083, !DIExpression(), !3177)
    #dbg_value(ptr @runtime.signalFutex, !2083, !DIExpression(), !3179)
  tail call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #16, !dbg !3180
  br label %if.done, !dbg !3148

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3181
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable(sync)
define double @f_gold(i64 %side) local_unnamed_addr #12 !dbg !3182 {
entry:
    #dbg_value(double 5.000000e+00, !3186, !DIExpression(), !3190)
    #dbg_value(i64 %side, !3185, !DIExpression(), !3192)
    #dbg_value(double poison, !3193, !DIExpression(), !3198)
    #dbg_value(double 3.000000e+00, !3197, !DIExpression(), !3200)
    #dbg_value(double poison, !3201, !DIExpression(), !3212)
    #dbg_value(double 3.000000e+00, !3204, !DIExpression(), !3214)
  %0 = icmp eq i64 %side, 1, !dbg !3215
  br i1 %0, label %math.Pow.exit, label %switch.next.i.i.preheader, !dbg !3215

switch.next.i.i.preheader:                        ; preds = %entry
  %1 = sitofp i64 %side to double, !dbg !3216
    #dbg_value(double %1, !3193, !DIExpression(), !3198)
    #dbg_value(double %1, !3201, !DIExpression(), !3212)
  br label %switch.next.i.i, !dbg !3215

switch.next.i.i:                                  ; preds = %switch.next.i.i.preheader, %if.then42.i.i
  %y.tr44.i = phi double [ %82, %if.then42.i.i ], [ 3.000000e+00, %switch.next.i.i.preheader ]
  %x.tr43.i = phi double [ %81, %if.then42.i.i ], [ %1, %switch.next.i.i.preheader ]
    #dbg_value(double %y.tr44.i, !3197, !DIExpression(), !3200)
    #dbg_value(double %x.tr43.i, !3193, !DIExpression(), !3198)
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3217)
  %2 = fcmp oeq double %y.tr44.i, 1.000000e+00, !dbg !3218
  br i1 %2, label %math.Pow.exit, label %switch.next2.i.i, !dbg !3215

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3219)
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3220)
  %or.cond26.i = fcmp uno double %x.tr43.i, %y.tr44.i, !dbg !3215
  br i1 %or.cond26.i, label %math.Pow.exit, label %switch.next5.i.i, !dbg !3215

switch.next5.i.i:                                 ; preds = %switch.next2.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3221)
  %3 = fcmp oeq double %x.tr43.i, 0.000000e+00, !dbg !3222
  br i1 %3, label %switch.body6.i.i, label %switch.next34.i.i, !dbg !3215

switch.body6.i.i:                                 ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3223)
  %4 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3224
  br i1 %4, label %switch.body7.i.i, label %switch.next8.i.i, !dbg !3215

switch.body7.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3225)
    #dbg_value(double %x.tr43.i, !3226, !DIExpression(), !3230)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3232)
  %.cast.i.i19.i = bitcast double %x.tr43.i to i64, !dbg !3234
  %5 = icmp slt i64 %.cast.i.i19.i, 0, !dbg !3235
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3236)
    #dbg_value(double %y.tr44.i, !3237, !DIExpression(), !3242)
    #dbg_value(double %y.tr44.i, !3244, !DIExpression(), !3248)
  %6 = tail call double @llvm.fabs.f64(double %y.tr44.i)
  %7 = fcmp ult double %6, 0x4340000000000000
  %or.cond.i = and i1 %7, %5, !dbg !3215
  br i1 %or.cond.i, label %if.done.i10.i, label %if.done.i.i, !dbg !3215

if.done.i10.i:                                    ; preds = %switch.body7.i.i
    #dbg_value(double %y.tr44.i, !3237, !DIExpression(), !3250)
    #dbg_value(double %y.tr44.i, !3251, !DIExpression(), !3257)
    #dbg_value(double %y.tr44.i, !3259, !DIExpression(), !3263)
  %8 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3263
    #dbg_value(double %8, !3255, !DIExpression(), !3265)
    #dbg_value(double poison, !1800, !DIExpression(), !3266)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3268)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3269)
    #dbg_value(double poison, !3256, !DIExpression(), !3271)
    #dbg_value(double poison, !3240, !DIExpression(), !3272)
    #dbg_value(double poison, !3241, !DIExpression(), !3273)
  %9 = fcmp oeq double %y.tr44.i, %8, !dbg !3274
  br i1 %9, label %math.isOddInt.exit18.i, label %if.done.i.i, !dbg !3275

math.isOddInt.exit18.i:                           ; preds = %if.done.i10.i
    #dbg_value(double %8, !3240, !DIExpression(), !3276)
  %abovemin.i13.i = fcmp oge double %8, 0xC3E0000000000000, !dbg !3277
  %belowmax.i14.i = fcmp ole double %8, 0x43DFFFFFFFFFFFFE, !dbg !3277
  %inbounds.i15.i = and i1 %abovemin.i13.i, %belowmax.i14.i, !dbg !3277
  %remapped.i16.i = zext i1 %abovemin.i13.i to i64, !dbg !3277
  %normal.i17.i = fptosi double %8 to i64, !dbg !3277
  %10 = select i1 %inbounds.i15.i, i64 %normal.i17.i, i64 %remapped.i16.i, !dbg !3277
  %11 = and i64 %10, 1, !dbg !3278
  %.not27.i = icmp eq i64 %11, 0, !dbg !3279
  br i1 %.not27.i, label %if.done.i.i, label %math.Pow.exit, !dbg !3215

if.done.i.i:                                      ; preds = %math.isOddInt.exit18.i, %if.done.i10.i, %switch.body7.i.i
    #dbg_value(i64 9218868437227405312, !1810, !DIExpression(), !3280)
  br label %math.Pow.exit, !dbg !3283

switch.next8.i.i:                                 ; preds = %switch.body6.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3284)
  %12 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3285
  br i1 %12, label %switch.body9.i.i, label %switch.next8.i.switch.done.i_crit_edge.i, !dbg !3215

switch.next8.i.switch.done.i_crit_edge.i:         ; preds = %switch.next8.i.i
  %.pre.i = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3286
  br label %switch.done.i.i, !dbg !3215

switch.body9.i.i:                                 ; preds = %switch.next8.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3288)
    #dbg_value(double %x.tr43.i, !3226, !DIExpression(), !3289)
    #dbg_value(double %x.tr43.i, !1785, !DIExpression(), !3291)
  %.cast.i.i.i = bitcast double %x.tr43.i to i64, !dbg !3293
  %13 = icmp slt i64 %.cast.i.i.i, 0, !dbg !3294
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3295)
    #dbg_value(double %y.tr44.i, !3237, !DIExpression(), !3296)
    #dbg_value(double %y.tr44.i, !3244, !DIExpression(), !3298)
  %14 = fcmp ult double %y.tr44.i, 0x4340000000000000
  %or.cond24.i = and i1 %14, %13, !dbg !3215
  br i1 %or.cond24.i, label %if.done.i2.i, label %if.done12.i.i, !dbg !3215

if.done.i2.i:                                     ; preds = %switch.body9.i.i
    #dbg_value(double %y.tr44.i, !3237, !DIExpression(), !3300)
    #dbg_value(double %y.tr44.i, !3251, !DIExpression(), !3301)
    #dbg_value(double %y.tr44.i, !3259, !DIExpression(), !3303)
  %15 = tail call double @llvm.trunc.f64(double %y.tr44.i), !dbg !3303
    #dbg_value(double %15, !3255, !DIExpression(), !3305)
    #dbg_value(double poison, !1800, !DIExpression(), !3306)
    #dbg_value(double %y.tr44.i, !1806, !DIExpression(), !3308)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3309)
    #dbg_value(double poison, !3256, !DIExpression(), !3311)
    #dbg_value(double poison, !3240, !DIExpression(), !3312)
    #dbg_value(double poison, !3241, !DIExpression(), !3313)
  %16 = fcmp oeq double %y.tr44.i, %15, !dbg !3314
  br i1 %16, label %math.isOddInt.exit.i, label %if.done12.i.i, !dbg !3315

math.isOddInt.exit.i:                             ; preds = %if.done.i2.i
    #dbg_value(double %15, !3240, !DIExpression(), !3316)
  %abovemin.i4.i = fcmp oge double %15, 0xC3E0000000000000, !dbg !3317
  %belowmax.i5.i = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !3317
  %inbounds.i6.i = and i1 %abovemin.i4.i, %belowmax.i5.i, !dbg !3317
  %remapped.i7.i = zext i1 %abovemin.i4.i to i64, !dbg !3317
  %normal.i8.i = fptosi double %15 to i64, !dbg !3317
  %17 = select i1 %inbounds.i6.i, i64 %normal.i8.i, i64 %remapped.i7.i, !dbg !3317
  %18 = and i64 %17, 1, !dbg !3318
  %.not.i = icmp eq i64 %18, 0, !dbg !3319
  br i1 %.not.i, label %if.done12.i.i, label %math.Pow.exit, !dbg !3215

if.done12.i.i:                                    ; preds = %math.isOddInt.exit.i, %if.done.i2.i, %switch.body9.i.i
  br label %math.Pow.exit, !dbg !3320

switch.done.i.i:                                  ; preds = %switch.next49.i.i, %switch.next45.i.i, %switch.next8.i.switch.done.i_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %switch.next8.i.switch.done.i_crit_edge.i ], [ %71, %switch.next49.i.i ], [ %71, %switch.next45.i.i ], !dbg !3286
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3321)
    #dbg_value(double %y.tr44.i, !3244, !DIExpression(), !3322)
    #dbg_value(double %.pre-phi.i, !3251, !DIExpression(), !3323)
    #dbg_value(double %.pre-phi.i, !3259, !DIExpression(), !3325)
  %19 = tail call double @llvm.trunc.f64(double %.pre-phi.i), !dbg !3325
    #dbg_value(double %19, !3255, !DIExpression(), !3327)
  %20 = fsub double %.pre-phi.i, %19, !dbg !3328
    #dbg_value(double %20, !1800, !DIExpression(), !3329)
    #dbg_value(double %.pre-phi.i, !1806, !DIExpression(), !3331)
    #dbg_value(!DIArgList(double poison, double poison), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 9223372036854775808, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3332)
  %.cast.i2.i.i.i = tail call double @llvm.fabs.f64(double %20), !dbg !3334
    #dbg_value(double %.cast.i2.i.i.i, !3256, !DIExpression(), !3335)
    #dbg_value(double %19, !3205, !DIExpression(), !3336)
    #dbg_value(double %.cast.i2.i.i.i, !3206, !DIExpression(), !3337)
  %21 = fcmp une double %20, 0.000000e+00, !dbg !3338
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3339)
  %22 = fcmp olt double %x.tr43.i, 0.000000e+00
  %or.cond.i.i = select i1 %21, i1 %22, i1 false, !dbg !3215
  br i1 %or.cond.i.i, label %math.Pow.exit, label %if.done15.i.i, !dbg !3215

if.done15.i.i:                                    ; preds = %switch.done.i.i
    #dbg_value(double %19, !3205, !DIExpression(), !3340)
  %23 = fcmp ult double %19, 0x43E0000000000000, !dbg !3341
  br i1 %23, label %if.done21.i.i, label %if.then16.i.i, !dbg !3215

if.then16.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3342)
  %24 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3343
  br i1 %24, label %math.Pow.exit, label %switch.next18.i.i, !dbg !3215

switch.next18.i.i:                                ; preds = %if.then16.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3344)
    #dbg_value(double %x.tr43.i, !3244, !DIExpression(), !3345)
  %25 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3347
  %26 = fcmp olt double %25, 1.000000e+00, !dbg !3348
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3349)
  %27 = fcmp ule double %y.tr44.i, 0.000000e+00, !dbg !3350
  %28 = xor i1 %27, %26, !dbg !3350
  %spec.select.i = select i1 %28, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3215
  br label %math.Pow.exit, !dbg !3215

if.done21.i.i:                                    ; preds = %if.done15.i.i
    #dbg_value(double 1.000000e+00, !3207, !DIExpression(), !3351)
    #dbg_value(i64 0, !3208, !DIExpression(), !3352)
    #dbg_value(double %.cast.i2.i.i.i, !3206, !DIExpression(), !3353)
  br i1 %21, label %if.then22.i.i, label %if.done25.i.i, !dbg !3215

if.then22.i.i:                                    ; preds = %if.done21.i.i
    #dbg_value(double %.cast.i2.i.i.i, !3206, !DIExpression(), !3354)
  %29 = fcmp ogt double %.cast.i2.i.i.i, 5.000000e-01, !dbg !3355
  %30 = fadd double %.cast.i2.i.i.i, -1.000000e+00, !dbg !3215
  %31 = fadd double %19, 1.000000e+00, !dbg !3215
  %32 = select i1 %29, double %31, double %19, !dbg !3215
  %33 = select i1 %29, double %30, double %.cast.i2.i.i.i, !dbg !3215
    #dbg_value(double %33, !3206, !DIExpression(), !3356)
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3357)
    #dbg_value(double %x.tr43.i, !3358, !DIExpression(), !3362)
  %34 = tail call double @llvm.log.f64(double %x.tr43.i), !dbg !3362
  %35 = fmul double %34, %33, !dbg !3364
    #dbg_value(double %35, !3365, !DIExpression(), !3369)
  %36 = tail call double @llvm.exp.f64(double %35), !dbg !3369
    #dbg_value(double %36, !3207, !DIExpression(), !3371)
  br label %if.done25.i.i, !dbg !3215

if.done25.i.i:                                    ; preds = %if.then22.i.i, %if.done21.i.i
  %37 = phi double [ %19, %if.done21.i.i ], [ %32, %if.then22.i.i ], !dbg !3336
  %38 = phi double [ 1.000000e+00, %if.done21.i.i ], [ %36, %if.then22.i.i ], !dbg !3351
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3372)
    #dbg_value(double poison, !3209, !DIExpression(), !3373)
    #dbg_value(i64 poison, !3210, !DIExpression(), !3374)
    #dbg_value(double %37, !3205, !DIExpression(), !3375)
  %abovemin.i.i = fcmp oge double %37, 0xC3E0000000000000, !dbg !3376
  %belowmax.i.i = fcmp ole double %37, 0x43DFFFFFFFFFFFFE, !dbg !3376
  %inbounds.i.i = and i1 %abovemin.i.i, %belowmax.i.i, !dbg !3376
  %saturated.i.i = select i1 %abovemin.i.i, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3376
  %isnan.i.i = fcmp uno double %37, 0.000000e+00, !dbg !3376
  %remapped.i.i = select i1 %isnan.i.i, i64 0, i64 %saturated.i.i, !dbg !3376
  %normal.i.i = fptosi double %37 to i64, !dbg !3376
  %39 = select i1 %inbounds.i.i, i64 %normal.i.i, i64 %remapped.i.i, !dbg !3376
    #dbg_value(i64 %39, !3211, !DIExpression(), !3377)
  %.not.i47.i = icmp eq i64 %39, 0, !dbg !3378
  br i1 %.not.i47.i, label %for.done.i.i, label %for.body.i.preheader.i, !dbg !3215

for.body.i.preheader.i:                           ; preds = %if.done25.i.i
  %40 = tail call fastcc { double, i64 } @math.Frexp(double %x.tr43.i), !dbg !3379
  %41 = extractvalue { double, i64 } %40, 1, !dbg !3379
    #dbg_value(i64 %41, !3210, !DIExpression(), !3374)
  %42 = extractvalue { double, i64 } %40, 0, !dbg !3379
    #dbg_value(double %42, !3209, !DIExpression(), !3373)
  br label %for.body.i.i, !dbg !3215

for.body.i.i:                                     ; preds = %if.done27.i.i, %for.body.i.preheader.i
  %43 = phi i64 [ %62, %if.done27.i.i ], [ %39, %for.body.i.preheader.i ]
  %44 = phi i64 [ %61, %if.done27.i.i ], [ %41, %for.body.i.preheader.i ]
  %45 = phi double [ %59, %if.done27.i.i ], [ %42, %for.body.i.preheader.i ]
  %46 = phi i64 [ %54, %if.done27.i.i ], [ 0, %for.body.i.preheader.i ]
  %47 = phi double [ %52, %if.done27.i.i ], [ %38, %for.body.i.preheader.i ]
    #dbg_value(i64 %43, !3211, !DIExpression(), !3380)
    #dbg_value(i64 %44, !3210, !DIExpression(), !3381)
  %48 = add i64 %44, -4097, !dbg !3215
  %or.cond10.i.i = icmp ult i64 %48, -8193, !dbg !3215
  br i1 %or.cond10.i.i, label %if.then26.i.i, label %if.done27.i.i, !dbg !3215

if.then26.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %44, !3210, !DIExpression(), !3382)
  %49 = add i64 %46, %44, !dbg !3383
    #dbg_value(i64 %49, !3208, !DIExpression(), !3383)
  br label %for.done.i.i, !dbg !3215

if.done27.i.i:                                    ; preds = %for.body.i.i
    #dbg_value(i64 %43, !3211, !DIExpression(), !3384)
  %50 = and i64 %43, 1, !dbg !3385
  %.not5.i.i = icmp eq i64 %50, 0, !dbg !3386
  %51 = fmul double %45, %47, !dbg !3215
  %52 = select i1 %.not5.i.i, double %47, double %51, !dbg !3215
  %53 = select i1 %.not5.i.i, i64 0, i64 %44, !dbg !3215
  %54 = add i64 %53, %46, !dbg !3215
    #dbg_value(double %45, !3209, !DIExpression(), !3387)
  %55 = fmul double %45, %45, !dbg !3388
    #dbg_value(double %55, !3209, !DIExpression(), !3388)
  %56 = shl nsw i64 %44, 1, !dbg !3389
    #dbg_value(i64 %56, !3210, !DIExpression(), !3389)
  %57 = fcmp olt double %55, 5.000000e-01, !dbg !3390
  %58 = fadd double %55, %55, !dbg !3215
  %59 = select i1 %57, double %58, double %55, !dbg !3215
  %60 = sext i1 %57 to i64, !dbg !3215
  %61 = add nsw i64 %56, %60, !dbg !3215
  %62 = ashr i64 %43, 1, !dbg !3391
    #dbg_value(i64 %62, !3211, !DIExpression(), !3380)
  %.not.i.i = icmp ult i64 %43, 2, !dbg !3378
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !3215

for.done.i.i:                                     ; preds = %if.done27.i.i, %if.then26.i.i, %if.done25.i.i
  %63 = phi double [ %47, %if.then26.i.i ], [ %38, %if.done25.i.i ], [ %52, %if.done27.i.i ]
  %64 = phi i64 [ %49, %if.then26.i.i ], [ 0, %if.done25.i.i ], [ %54, %if.done27.i.i ], !dbg !3352
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3392)
  %65 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3393
  br i1 %65, label %if.then32.i.i, label %if.done33.i.i, !dbg !3215

if.then32.i.i:                                    ; preds = %for.done.i.i
    #dbg_value(double %63, !3207, !DIExpression(), !3394)
  %66 = fdiv double 1.000000e+00, %63, !dbg !3395
    #dbg_value(double %66, !3207, !DIExpression(), !3396)
    #dbg_value(i64 %64, !3208, !DIExpression(), !3397)
  %67 = sub i64 0, %64, !dbg !3398
    #dbg_value(i64 %67, !3208, !DIExpression(), !3399)
  br label %if.done33.i.i, !dbg !3215

if.done33.i.i:                                    ; preds = %if.then32.i.i, %for.done.i.i
  %68 = phi double [ %63, %for.done.i.i ], [ %66, %if.then32.i.i ], !dbg !3351
  %69 = phi i64 [ %64, %for.done.i.i ], [ %67, %if.then32.i.i ], !dbg !3352
    #dbg_value(double %68, !3207, !DIExpression(), !3400)
    #dbg_value(i64 %69, !3208, !DIExpression(), !3401)
  %70 = tail call fastcc double @math.Ldexp(double %68, i64 %69), !dbg !3402
  br label %math.Pow.exit, !dbg !3403

switch.next34.i.i:                                ; preds = %switch.next5.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3404)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3405)
    #dbg_value(i64 0, !1764, !DIExpression(), !3407)
  %71 = tail call double @llvm.fabs.f64(double %y.tr44.i), !dbg !3408
    #dbg_value(double %71, !1760, !DIExpression(), !3409)
  %72 = fcmp ogt double %71, 0x7FEFFFFFFFFFFFFF, !dbg !3410
  br i1 %72, label %switch.body35.i.i, label %switch.next40.i.i, !dbg !3215

switch.body35.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3411)
  %73 = fcmp oeq double %x.tr43.i, -1.000000e+00, !dbg !3412
  br i1 %73, label %math.Pow.exit, label %switch.next37.i.i, !dbg !3215

switch.next37.i.i:                                ; preds = %switch.body35.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3413)
    #dbg_value(double %x.tr43.i, !3244, !DIExpression(), !3414)
  %74 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3416
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3417)
    #dbg_value(i64 1, !1764, !DIExpression(), !3418)
    #dbg_value(double %y.tr44.i, !1760, !DIExpression(), !3420)
  %75 = fcmp ogt double %y.tr44.i, 0x7FEFFFFFFFFFFFFF, !dbg !3421
  %76 = fcmp uge double %74, 1.000000e+00, !dbg !3422
  %77 = xor i1 %75, %76, !dbg !3422
  %spec.select25.i = select i1 %77, double 0.000000e+00, double 0x7FF0000000000000, !dbg !3215
  br label %math.Pow.exit, !dbg !3215

switch.next40.i.i:                                ; preds = %switch.next34.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3423)
    #dbg_value(double %x.tr43.i, !1760, !DIExpression(), !3424)
    #dbg_value(i64 0, !1764, !DIExpression(), !3426)
  %78 = tail call double @llvm.fabs.f64(double %x.tr43.i), !dbg !3427
    #dbg_value(double %78, !1760, !DIExpression(), !3428)
  %79 = fcmp ogt double %78, 0x7FEFFFFFFFFFFFFF, !dbg !3429
  br i1 %79, label %switch.body41.i.i, label %switch.next47.i.i, !dbg !3215

switch.body41.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3430)
    #dbg_value(i64 -1, !1764, !DIExpression(), !3431)
    #dbg_value(double poison, !1760, !DIExpression(), !3433)
  %80 = fcmp olt double %x.tr43.i, 0xFFEFFFFFFFFFFFFF, !dbg !3434
  br i1 %80, label %if.then42.i.i, label %if.done43.i.i, !dbg !3215

if.then42.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3435)
  %81 = fdiv double 1.000000e+00, %x.tr43.i, !dbg !3436
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3437)
  %82 = fneg double %y.tr44.i, !dbg !3438
    #dbg_value(double %81, !3193, !DIExpression(), !3198)
    #dbg_value(double %82, !3197, !DIExpression(), !3200)
    #dbg_value(double %81, !3201, !DIExpression(), !3212)
    #dbg_value(double %82, !3204, !DIExpression(), !3214)
  %83 = fcmp oeq double %y.tr44.i, 0.000000e+00, !dbg !3439
  %84 = fcmp oeq double %81, 1.000000e+00, !dbg !3215
  %85 = select i1 %83, i1 true, i1 %84, !dbg !3215
  br i1 %85, label %math.Pow.exit, label %switch.next.i.i, !dbg !3215

if.done43.i.i:                                    ; preds = %switch.body41.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3440)
  %86 = fcmp olt double %y.tr44.i, 0.000000e+00, !dbg !3441
  br i1 %86, label %math.Pow.exit, label %switch.next45.i.i, !dbg !3215

switch.next45.i.i:                                ; preds = %if.done43.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3442)
  %87 = fcmp ogt double %y.tr44.i, 0.000000e+00, !dbg !3443
  br i1 %87, label %math.Pow.exit, label %switch.done.i.i, !dbg !3215

switch.next47.i.i:                                ; preds = %switch.next40.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3444)
  %88 = fcmp oeq double %y.tr44.i, 5.000000e-01, !dbg !3445
  br i1 %88, label %switch.body48.i.i, label %switch.next49.i.i, !dbg !3215

switch.body48.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3446)
    #dbg_value(double %x.tr43.i, !3186, !DIExpression(), !3447)
  %89 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3447
  br label %math.Pow.exit, !dbg !3449

switch.next49.i.i:                                ; preds = %switch.next47.i.i
    #dbg_value(double %y.tr44.i, !3204, !DIExpression(), !3450)
  %90 = fcmp oeq double %y.tr44.i, -5.000000e-01, !dbg !3451
  br i1 %90, label %switch.body50.i.i, label %switch.done.i.i, !dbg !3215

switch.body50.i.i:                                ; preds = %switch.next49.i.i
    #dbg_value(double %x.tr43.i, !3201, !DIExpression(), !3452)
    #dbg_value(double %x.tr43.i, !3186, !DIExpression(), !3453)
  %91 = tail call double @llvm.sqrt.f64(double %x.tr43.i), !dbg !3453
  %92 = fdiv double 1.000000e+00, %91, !dbg !3455
  br label %math.Pow.exit, !dbg !3456

math.Pow.exit:                                    ; preds = %switch.next.i.i, %switch.next2.i.i, %if.then42.i.i, %entry, %math.isOddInt.exit18.i, %if.done.i.i, %math.isOddInt.exit.i, %if.done12.i.i, %switch.done.i.i, %if.then16.i.i, %switch.next18.i.i, %if.done33.i.i, %switch.body35.i.i, %switch.next37.i.i, %if.done43.i.i, %switch.next45.i.i, %switch.body48.i.i, %switch.body50.i.i
  %common.ret.op.i.i = phi double [ 0x7FF0000000000000, %if.done.i.i ], [ 0.000000e+00, %if.done12.i.i ], [ %70, %if.done33.i.i ], [ %89, %switch.body48.i.i ], [ %92, %switch.body50.i.i ], [ %x.tr43.i, %math.isOddInt.exit.i ], [ 1.000000e+00, %if.then16.i.i ], [ 1.000000e+00, %switch.body35.i.i ], [ 0.000000e+00, %if.done43.i.i ], [ 0xFFF0000000000000, %math.isOddInt.exit18.i ], [ 0x7FF8000000000001, %switch.done.i.i ], [ 0x7FF0000000000000, %switch.next45.i.i ], [ %spec.select.i, %switch.next18.i.i ], [ %spec.select25.i, %switch.next37.i.i ], [ 1.000000e+00, %entry ], [ 0x7FF8000000000001, %switch.next2.i.i ], [ 1.000000e+00, %if.then42.i.i ], [ %x.tr43.i, %switch.next.i.i ]
  %93 = fmul double %common.ret.op.i.i, 0x401EA708A824F613, !dbg !3457
  ret double %93, !dbg !3458
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
attributes #2 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #12 = { nofree norecurse nosync nounwind memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
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
!1746 = !DILocalVariable(name: "exp", arg: 2, scope: !1747, file: !1736, line: 22, type: !1739)
!1747 = distinct !DISubprogram(name: "math.ldexp", linkageName: "math.ldexp", scope: !1736, file: !1736, line: 22, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1749)
!1748 = !DISubroutineType(types: !1738)
!1749 = !{!1750, !1746, !1751, !1752, !1753}
!1750 = !DILocalVariable(name: "frac", arg: 1, scope: !1747, file: !1736, line: 22, type: !450)
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
!1778 = !DILocation(line: 63, column: 9, scope: !1774, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 30, column: 22, scope: !1747, inlinedAt: !1755)
!1780 = !DILocation(line: 63, column: 12, scope: !1774, inlinedAt: !1779)
!1781 = !DILocation(line: 0, scope: !1774, inlinedAt: !1779)
!1782 = !DILocation(line: 30, column: 2, scope: !1747, inlinedAt: !1755)
!1783 = !DILocation(line: 31, column: 9, scope: !1747, inlinedAt: !1755)
!1784 = !DILocation(line: 31, column: 2, scope: !1747, inlinedAt: !1755)
!1785 = !DILocalVariable(name: "f", arg: 1, scope: !1786, file: !1787, line: 35, type: !450)
!1786 = distinct !DISubprogram(name: "math.Float64bits", linkageName: "math.Float64bits", scope: !1787, file: !1787, line: 35, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1788)
!1787 = !DIFile(filename: "unsafe.go", directory: "/usr/local/go/src/math")
!1788 = !{!1785}
!1789 = !DILocation(line: 35, column: 6, scope: !1786, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 32, column: 18, scope: !1747, inlinedAt: !1755)
!1791 = !DILocation(line: 35, column: 45, scope: !1786, inlinedAt: !1790)
!1792 = !DILocation(line: 33, column: 13, scope: !1747, inlinedAt: !1755)
!1793 = !DILocation(line: 33, column: 14, scope: !1747, inlinedAt: !1755)
!1794 = !DILocation(line: 33, column: 22, scope: !1747, inlinedAt: !1755)
!1795 = !DILocation(line: 33, column: 28, scope: !1747, inlinedAt: !1755)
!1796 = !DILocation(line: 33, column: 2, scope: !1747, inlinedAt: !1755)
!1797 = !DILocation(line: 34, column: 5, scope: !1747, inlinedAt: !1755)
!1798 = !DILocation(line: 34, column: 9, scope: !1747, inlinedAt: !1755)
!1799 = !DILocation(line: 35, column: 22, scope: !1747, inlinedAt: !1755)
!1800 = !DILocalVariable(name: "f", arg: 1, scope: !1801, file: !1802, line: 9, type: !450)
!1801 = distinct !DISubprogram(name: "math.Copysign", linkageName: "math.Copysign", scope: !1802, file: !1802, line: 9, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1805)
!1802 = !DIFile(filename: "copysign.go", directory: "/usr/local/go/src/math")
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!450, !450}
!1805 = !{!1800, !1806}
!1806 = !DILocalVariable(name: "sign", arg: 2, scope: !1801, file: !1802, line: 9, type: !450)
!1807 = !DILocation(line: 11, column: 37, scope: !1801, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 35, column: 18, scope: !1747, inlinedAt: !1755)
!1809 = !DILocation(line: 11, column: 63, scope: !1801, inlinedAt: !1808)
!1810 = !DILocalVariable(name: "b", arg: 1, scope: !1811, file: !1787, line: 41, type: !11)
!1811 = distinct !DISubprogram(name: "math.Float64frombits", linkageName: "math.Float64frombits", scope: !1787, file: !1787, line: 41, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!11}
!1814 = !{!1810}
!1815 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 11, column: 24, scope: !1801, inlinedAt: !1808)
!1817 = !DILocation(line: 41, column: 49, scope: !1811, inlinedAt: !1816)
!1818 = !DILocation(line: 35, column: 3, scope: !1747, inlinedAt: !1755)
!1819 = !DILocation(line: 37, column: 5, scope: !1747, inlinedAt: !1755)
!1820 = !DILocation(line: 37, column: 9, scope: !1747, inlinedAt: !1755)
!1821 = !DILocation(line: 38, column: 6, scope: !1747, inlinedAt: !1755)
!1822 = !DILocation(line: 38, column: 11, scope: !1747, inlinedAt: !1755)
!1823 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 27, column: 24, scope: !1825, inlinedAt: !1831)
!1825 = distinct !DISubprogram(name: "math.Inf", linkageName: "math.Inf", scope: !1762, file: !1762, line: 20, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!1739}
!1828 = !{!1829, !1830}
!1829 = !DILocalVariable(name: "sign", arg: 1, scope: !1825, file: !1762, line: 20, type: !1739)
!1830 = !DILocalVariable(name: "v", scope: !1825, file: !1762, line: 21, type: !11)
!1831 = distinct !DILocation(line: 41, column: 13, scope: !1747, inlinedAt: !1755)
!1832 = !DILocation(line: 41, column: 3, scope: !1747, inlinedAt: !1755)
!1833 = !DILocation(line: 43, column: 6, scope: !1747, inlinedAt: !1755)
!1834 = !DILocation(line: 44, column: 5, scope: !1747, inlinedAt: !1755)
!1835 = !DILocation(line: 44, column: 9, scope: !1747, inlinedAt: !1755)
!1836 = !DILocation(line: 48, column: 2, scope: !1747, inlinedAt: !1755)
!1837 = !DILocation(line: 49, column: 14, scope: !1747, inlinedAt: !1755)
!1838 = !DILocation(line: 49, column: 24, scope: !1747, inlinedAt: !1755)
!1839 = !DILocation(line: 49, column: 2, scope: !1747, inlinedAt: !1755)
!1840 = !DILocation(line: 50, column: 9, scope: !1747, inlinedAt: !1755)
!1841 = !DILocation(line: 50, column: 29, scope: !1747, inlinedAt: !1755)
!1842 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 50, column: 28, scope: !1747, inlinedAt: !1755)
!1844 = !DILocation(line: 41, column: 49, scope: !1811, inlinedAt: !1843)
!1845 = !DILocation(line: 50, column: 11, scope: !1747, inlinedAt: !1755)
!1846 = !DILocation(line: 50, column: 2, scope: !1747, inlinedAt: !1755)
!1847 = !DILocation(line: 19, column: 2, scope: !1735)
!1848 = distinct !DISubprogram(name: "math.Frexp", linkageName: "math.Frexp", scope: !1849, file: !1849, line: 17, type: !1850, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1851)
!1849 = !DIFile(filename: "frexp.go", directory: "/usr/local/go/src/math")
!1850 = !DISubroutineType(cc: DW_CC_nocall, types: !1776)
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "f", arg: 1, scope: !1848, file: !1849, line: 17, type: !450)
!1853 = !DILocation(line: 17, column: 6, scope: !1848)
!1854 = !DILocation(line: 21, column: 15, scope: !1848)
!1855 = !DILocalVariable(name: "f", arg: 1, scope: !1856, file: !1849, line: 24, type: !450)
!1856 = distinct !DISubprogram(name: "math.frexp", linkageName: "math.frexp", scope: !1849, file: !1849, line: 24, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1857)
!1857 = !{!1855, !1858, !1859, !1860}
!1858 = !DILocalVariable(name: "exp", scope: !1856, file: !1849, line: 24, type: !1739)
!1859 = !DILocalVariable(name: "x", scope: !1856, file: !1849, line: 33, type: !11)
!1860 = !DILocalVariable(name: "frac", scope: !1856, file: !1849, line: 24, type: !450)
!1861 = !DILocation(line: 24, column: 6, scope: !1856, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 21, column: 14, scope: !1848)
!1863 = !DILocation(line: 27, column: 7, scope: !1856, inlinedAt: !1862)
!1864 = !DILocation(line: 27, column: 9, scope: !1856, inlinedAt: !1862)
!1865 = !DILocation(line: 0, scope: !1856, inlinedAt: !1862)
!1866 = !DILocation(line: 29, column: 13, scope: !1856, inlinedAt: !1862)
!1867 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 29, column: 12, scope: !1856, inlinedAt: !1862)
!1869 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !1868)
!1870 = !DILocation(line: 0, scope: !1761, inlinedAt: !1868)
!1871 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !1868)
!1872 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !1868)
!1873 = !DILocation(line: 29, column: 28, scope: !1856, inlinedAt: !1862)
!1874 = !DILocation(line: 32, column: 21, scope: !1856, inlinedAt: !1862)
!1875 = !DILocation(line: 61, column: 6, scope: !1774, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 32, column: 20, scope: !1856, inlinedAt: !1862)
!1877 = !DILocation(line: 63, column: 9, scope: !1774, inlinedAt: !1876)
!1878 = !DILocation(line: 63, column: 12, scope: !1774, inlinedAt: !1876)
!1879 = !DILocation(line: 0, scope: !1774, inlinedAt: !1876)
!1880 = !DILocation(line: 32, column: 2, scope: !1856, inlinedAt: !1862)
!1881 = !DILocation(line: 32, column: 5, scope: !1856, inlinedAt: !1862)
!1882 = !DILocation(line: 33, column: 19, scope: !1856, inlinedAt: !1862)
!1883 = !DILocation(line: 35, column: 6, scope: !1786, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 33, column: 18, scope: !1856, inlinedAt: !1862)
!1885 = !DILocation(line: 35, column: 45, scope: !1786, inlinedAt: !1884)
!1886 = !DILocation(line: 33, column: 2, scope: !1856, inlinedAt: !1862)
!1887 = !DILocation(line: 34, column: 14, scope: !1856, inlinedAt: !1862)
!1888 = !DILocation(line: 34, column: 15, scope: !1856, inlinedAt: !1862)
!1889 = !DILocation(line: 34, column: 23, scope: !1856, inlinedAt: !1862)
!1890 = !DILocation(line: 34, column: 37, scope: !1856, inlinedAt: !1862)
!1891 = !DILocation(line: 34, column: 2, scope: !1856, inlinedAt: !1862)
!1892 = !DILocation(line: 35, column: 2, scope: !1856, inlinedAt: !1862)
!1893 = !DILocation(line: 36, column: 2, scope: !1856, inlinedAt: !1862)
!1894 = !DILocation(line: 37, column: 25, scope: !1856, inlinedAt: !1862)
!1895 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 37, column: 24, scope: !1856, inlinedAt: !1862)
!1897 = !DILocation(line: 41, column: 49, scope: !1811, inlinedAt: !1896)
!1898 = !DILocation(line: 37, column: 2, scope: !1856, inlinedAt: !1862)
!1899 = !DILocation(line: 38, column: 2, scope: !1856, inlinedAt: !1862)
!1900 = !DILocation(line: 21, column: 2, scope: !1848)
!1901 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !1905)
!1902 = !DISubroutineType(cc: DW_CC_nocall, types: !1903)
!1903 = !{!1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!1905 = !{!1906, !1907}
!1906 = !DILocalVariable(name: "m", arg: 1, scope: !1901, file: !54, line: 49, type: !1904)
!1907 = !DILocalVariable(name: "old", scope: !1901, file: !54, line: 50, type: !43)
!1908 = !DILocation(line: 50, column: 12, scope: !1901)
!1909 = !DILocation(line: 50, column: 14, scope: !1901)
!1910 = !DILocalVariable(name: "x", arg: 1, scope: !1911, file: !1912, line: 153, type: !1915)
!1911 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1912, file: !1912, line: 153, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1916)
!1912 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1915, !43}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1916 = !{!1910, !1917}
!1917 = !DILocalVariable(name: "new", arg: 2, scope: !1911, file: !1912, line: 153, type: !43)
!1918 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 50, column: 24, scope: !1901)
!1920 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !1919)
!1921 = !DILocalVariable(name: "addr", arg: 1, scope: !1922, file: !1923, line: 77, type: !1926)
!1922 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1923, file: !1923, line: 77, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1927)
!1923 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926, !43}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1927 = !{!1921, !1928}
!1928 = !DILocalVariable(name: "new", arg: 2, scope: !1922, file: !1923, line: 77, type: !43)
!1929 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !1919)
!1931 = !DILocation(line: 50, column: 29, scope: !1901)
!1932 = !DILocation(line: 0, scope: !1901)
!1933 = !DILocation(line: 52, column: 8, scope: !1901)
!1934 = !DILocation(line: 55, column: 3, scope: !1901)
!1935 = !DILocalVariable(name: "f", arg: 1, scope: !1936, file: !1937, line: 53, type: !1940)
!1936 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1937, file: !1937, line: 53, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1941)
!1937 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1941 = !{!1935}
!1942 = !DILocation(line: 54, column: 46, scope: !1936, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 55, column: 15, scope: !1901)
!1944 = !DILocation(line: 54, column: 19, scope: !1936, inlinedAt: !1943)
!1945 = !DILocation(line: 57, column: 2, scope: !1901)
!1946 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!3}
!1949 = !{!1950, !1951, !1952, !1954}
!1950 = !DILocalVariable(name: "t", arg: 1, scope: !1946, file: !2, line: 125, type: !3)
!1951 = !DILocalVariable(name: "found", scope: !1946, file: !2, line: 133, type: !47)
!1952 = !DILocalVariable(name: "q", scope: !1946, file: !2, line: 134, type: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1954 = !DILocalVariable(name: "otherGoroutines", scope: !1946, file: !2, line: 99, type: !43)
!1955 = !DILocation(line: 125, column: 6, scope: !1946)
!1956 = !DILocalVariable(name: "m", arg: 1, scope: !1957, file: !54, line: 31, type: !1904)
!1957 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !1959)
!1958 = !DISubroutineType(types: !1903)
!1959 = !{!1956}
!1960 = !DILocation(line: 33, column: 5, scope: !1957, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 132, column: 21, scope: !1946)
!1962 = !DILocalVariable(name: "x", arg: 1, scope: !1963, file: !1912, line: 156, type: !1915)
!1963 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1912, file: !1912, line: 156, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1915, !43, !43}
!1966 = !{!1962, !1967, !1968}
!1967 = !DILocalVariable(name: "old", arg: 2, scope: !1963, file: !1912, line: 156, type: !43)
!1968 = !DILocalVariable(name: "new", arg: 3, scope: !1963, file: !1912, line: 156, type: !43)
!1969 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !1961)
!1971 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !1970)
!1972 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !1970)
!1973 = !DILocalVariable(name: "addr", arg: 1, scope: !1974, file: !1923, line: 99, type: !1926)
!1974 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1923, file: !1923, line: 99, type: !1975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!1926, !43, !43}
!1977 = !{!1973, !1978, !1979}
!1978 = !DILocalVariable(name: "old", arg: 2, scope: !1974, file: !1923, line: 99, type: !43)
!1979 = !DILocalVariable(name: "new", arg: 3, scope: !1974, file: !1923, line: 99, type: !43)
!1980 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !1970)
!1982 = !DILocation(line: 0, scope: !1957, inlinedAt: !1961)
!1983 = !DILocation(line: 43, column: 6, scope: !1957, inlinedAt: !1961)
!1984 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 43, column: 18, scope: !1957, inlinedAt: !1961)
!1986 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !1985)
!1987 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !1985)
!1989 = !DILocation(line: 43, column: 22, scope: !1957, inlinedAt: !1961)
!1990 = !DILocation(line: 45, column: 3, scope: !1957, inlinedAt: !1961)
!1991 = !DILocalVariable(name: "f", arg: 1, scope: !1992, file: !1937, line: 25, type: !1940)
!1992 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1937, file: !1937, line: 25, type: !1993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1940, !43}
!1995 = !{!1991, !1996}
!1996 = !DILocalVariable(name: "cmp", arg: 2, scope: !1992, file: !1937, line: 25, type: !43)
!1997 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 45, column: 15, scope: !1957, inlinedAt: !1961)
!1999 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !1998)
!2000 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !1998)
!2001 = !DILocation(line: 133, column: 2, scope: !1946)
!2002 = !DILocation(line: 134, column: 6, scope: !1946)
!2003 = !DILocation(line: 134, column: 25, scope: !1946)
!2004 = !DILocation(line: 134, column: 28, scope: !1946)
!2005 = !DILocation(line: 0, scope: !1946)
!2006 = !DILocation(line: 134, column: 52, scope: !1946)
!2007 = !DILocation(line: 134, column: 26, scope: !1946)
!2008 = !DILocation(line: 135, column: 7, scope: !1946)
!2009 = !DILocation(line: 135, column: 12, scope: !1946)
!2010 = !DILocation(line: 135, column: 9, scope: !1946)
!2011 = !DILocation(line: 134, column: 36, scope: !1946)
!2012 = !DILocation(line: 136, column: 5, scope: !1946)
!2013 = !DILocation(line: 136, column: 9, scope: !1946)
!2014 = !DILocation(line: 136, column: 17, scope: !1946)
!2015 = !DILocation(line: 136, column: 4, scope: !1946)
!2016 = !DILocation(line: 137, column: 4, scope: !1946)
!2017 = !DILocation(line: 141, column: 2, scope: !1946)
!2018 = !DILocation(line: 50, column: 12, scope: !1901, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 142, column: 23, scope: !1946)
!2020 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 50, column: 24, scope: !1901, inlinedAt: !2019)
!2022 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !2021)
!2023 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !2021)
!2025 = !DILocation(line: 50, column: 29, scope: !1901, inlinedAt: !2019)
!2026 = !DILocation(line: 0, scope: !1901, inlinedAt: !2019)
!2027 = !DILocation(line: 52, column: 8, scope: !1901, inlinedAt: !2019)
!2028 = !DILocation(line: 55, column: 3, scope: !1901, inlinedAt: !2019)
!2029 = !DILocation(line: 54, column: 46, scope: !1936, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 55, column: 15, scope: !1901, inlinedAt: !2019)
!2031 = !DILocation(line: 54, column: 19, scope: !1936, inlinedAt: !2030)
!2032 = !DILocation(line: 145, column: 6, scope: !1946)
!2033 = !DILocation(line: 148, column: 2, scope: !1946)
!2034 = !DILocation(line: 142, column: 23, scope: !1946)
!2035 = !DILocation(line: 146, column: 15, scope: !1946)
!2036 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!60}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "sig", arg: 1, scope: !2036, file: !2, line: 266, type: !60)
!2041 = !DILocalVariable(name: "stackBottom", scope: !2036, file: !2, line: 28, type: !21)
!2042 = !DILocation(line: 266, column: 6, scope: !2036)
!2043 = !DILocation(line: 62, column: 34, scope: !2044, inlinedAt: !2048)
!2044 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2046)
!2045 = !DISubroutineType(types: !15)
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "t", scope: !2044, file: !2, line: 62, type: !3)
!2048 = distinct !DILocation(line: 268, column: 9, scope: !2036)
!2049 = !DILocation(line: 63, column: 5, scope: !2044, inlinedAt: !2048)
!2050 = !DILocation(line: 63, column: 7, scope: !2044, inlinedAt: !2048)
!2051 = !DILocation(line: 0, scope: !2044, inlinedAt: !2048)
!2052 = !DILocation(line: 64, column: 15, scope: !2044, inlinedAt: !2048)
!2053 = !DILocation(line: 66, column: 9, scope: !2044, inlinedAt: !2048)
!2054 = !DILocation(line: 58, column: 6, scope: !2055, inlinedAt: !2056)
!2055 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1525, file: !1525, line: 58, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2056 = distinct !DILocation(line: 268, column: 49, scope: !2036)
!2057 = !DILocation(line: 268, column: 39, scope: !2036)
!2058 = !DILocation(line: 268, column: 18, scope: !2036)
!2059 = !DILocalVariable(name: "wg", arg: 1, scope: !2060, file: !2, line: 163, type: !2063)
!2060 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2064)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!2064 = !{!2059}
!2065 = !DILocation(line: 164, column: 5, scope: !2060, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 271, column: 20, scope: !2036)
!2067 = !DILocalVariable(name: "x", arg: 1, scope: !2068, file: !1912, line: 161, type: !1915)
!2068 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1912, file: !1912, line: 161, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2069)
!2069 = !{!2067, !2070}
!2070 = !DILocalVariable(name: "delta", arg: 2, scope: !2068, file: !1912, line: 161, type: !43)
!2071 = !DILocation(line: 161, column: 69, scope: !2068, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 164, column: 13, scope: !2060, inlinedAt: !2066)
!2073 = !DILocation(line: 161, column: 74, scope: !2068, inlinedAt: !2072)
!2074 = !DILocalVariable(name: "addr", arg: 1, scope: !2075, file: !1923, line: 123, type: !1926)
!2075 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1923, file: !1923, line: 123, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2076)
!2076 = !{!2074, !2077}
!2077 = !DILocalVariable(name: "delta", arg: 2, scope: !2075, file: !1923, line: 123, type: !43)
!2078 = !DILocation(line: 123, column: 6, scope: !2075, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 161, column: 67, scope: !2068, inlinedAt: !2072)
!2080 = !DILocation(line: 164, column: 26, scope: !2060, inlinedAt: !2066)
!2081 = !DILocation(line: 0, scope: !2060, inlinedAt: !2066)
!2082 = !DILocation(line: 165, column: 3, scope: !2060, inlinedAt: !2066)
!2083 = !DILocalVariable(name: "f", arg: 1, scope: !2084, file: !1937, line: 58, type: !1940)
!2084 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1937, file: !1937, line: 58, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2085)
!2085 = !{!2083}
!2086 = !DILocation(line: 59, column: 50, scope: !2084, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 165, column: 15, scope: !2060, inlinedAt: !2066)
!2088 = !DILocation(line: 59, column: 23, scope: !2084, inlinedAt: !2087)
!2089 = !DILocalVariable(name: "x", arg: 1, scope: !2090, file: !1912, line: 147, type: !1915)
!2090 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1912, file: !1912, line: 147, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!1915}
!2093 = !{!2089}
!2094 = !DILocation(line: 147, column: 53, scope: !2090, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 274, column: 18, scope: !2036)
!2096 = !DILocalVariable(name: "addr", arg: 1, scope: !2097, file: !1923, line: 183, type: !1926)
!2097 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1923, file: !1923, line: 183, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!1926}
!2100 = !{!2096}
!2101 = !DILocation(line: 183, column: 6, scope: !2097, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 147, column: 51, scope: !2090, inlinedAt: !2095)
!2103 = !DILocation(line: 274, column: 21, scope: !2036)
!2104 = !DILocation(line: 0, scope: !2036)
!2105 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 275, column: 15, scope: !2036)
!2107 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !2106)
!2108 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !2106)
!2109 = !DILocation(line: 164, column: 5, scope: !2060, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 279, column: 20, scope: !2036)
!2111 = !DILocation(line: 161, column: 69, scope: !2068, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 164, column: 13, scope: !2060, inlinedAt: !2110)
!2113 = !DILocation(line: 161, column: 74, scope: !2068, inlinedAt: !2112)
!2114 = !DILocation(line: 123, column: 6, scope: !2075, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 161, column: 67, scope: !2068, inlinedAt: !2112)
!2116 = !DILocation(line: 164, column: 26, scope: !2060, inlinedAt: !2110)
!2117 = !DILocation(line: 0, scope: !2060, inlinedAt: !2110)
!2118 = !DILocation(line: 165, column: 3, scope: !2060, inlinedAt: !2110)
!2119 = !DILocation(line: 59, column: 50, scope: !2084, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 165, column: 15, scope: !2060, inlinedAt: !2110)
!2121 = !DILocation(line: 59, column: 23, scope: !2084, inlinedAt: !2120)
!2122 = !DILocation(line: 280, column: 2, scope: !2036)
!2123 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !102, file: !102, line: 85, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2126)
!2124 = !DISubroutineType(cc: DW_CC_nocall, types: !2125)
!2125 = !{!291}
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "msg", arg: 1, scope: !2123, file: !102, line: 85, type: !291)
!2128 = !DILocation(line: 85, column: 6, scope: !2123)
!2129 = !DILocation(line: 88, column: 30, scope: !2123)
!2130 = !DILocation(line: 88, column: 35, scope: !2123)
!2131 = !DILocation(line: 88, column: 16, scope: !2123)
!2132 = !DILocation(line: 89, column: 2, scope: !2123)
!2133 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !102, file: !102, line: 91, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2136)
!2134 = !DISubroutineType(cc: DW_CC_nocall, types: !2135)
!2135 = !{!9, !291}
!2136 = !{!2137, !2138}
!2137 = !DILocalVariable(name: "addr", arg: 1, scope: !2133, file: !102, line: 91, type: !9)
!2138 = !DILocalVariable(name: "msg", arg: 2, scope: !2133, file: !102, line: 91, type: !291)
!2139 = !DILocation(line: 91, column: 6, scope: !2133)
!2140 = !DILocation(line: 99, column: 14, scope: !2133)
!2141 = !DILocation(line: 100, column: 20, scope: !2133)
!2142 = !DILocation(line: 100, column: 19, scope: !2133)
!2143 = !DILocation(line: 100, column: 26, scope: !2133)
!2144 = !DILocation(line: 100, column: 11, scope: !2133)
!2145 = !DILocation(line: 101, column: 14, scope: !2133)
!2146 = !DILocation(line: 105, column: 14, scope: !2133)
!2147 = !DILocation(line: 105, column: 13, scope: !2133)
!2148 = !DILocation(line: 106, column: 9, scope: !2133)
!2149 = !DILocation(line: 107, column: 7, scope: !2133)
!2150 = !DILocation(line: 108, column: 2, scope: !2133)
!2151 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2152)
!2152 = !{!2153, !2154}
!2153 = !DILocalVariable(name: "s", arg: 1, scope: !2151, file: !1602, line: 12, type: !291)
!2154 = !DILocalVariable(name: "i", scope: !2151, file: !1602, line: 13, type: !1739)
!2155 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2161)
!2156 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !123, file: !123, line: 214, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!155}
!2159 = !{!2160}
!2160 = !DILocalVariable(name: "c", arg: 1, scope: !2156, file: !123, line: 214, type: !155)
!2161 = distinct !DILocation(line: 14, column: 10, scope: !2151)
!2162 = !DILocation(line: 12, column: 6, scope: !2151)
!2163 = !DILocation(line: 13, column: 6, scope: !2151)
!2164 = !DILocation(line: 13, column: 22, scope: !2151)
!2165 = !DILocation(line: 0, scope: !2151)
!2166 = !DILocation(line: 14, column: 13, scope: !2151)
!2167 = !DILocation(line: 14, column: 11, scope: !2151)
!2168 = !DILocation(line: 14, column: 12, scope: !2151)
!2169 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2161)
!2170 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2161)
!2171 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2161)
!2172 = !DILocation(line: 13, column: 26, scope: !2151)
!2173 = !DILocation(line: 13, column: 14, scope: !2151)
!2174 = !DILocation(line: 13, column: 16, scope: !2151)
!2175 = !DILocation(line: 16, column: 2, scope: !2151)
!2176 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2179)
!2177 = !DISubroutineType(cc: DW_CC_nocall, types: !2178)
!2178 = !{!21}
!2179 = !{!2180, !2181, !2182}
!2180 = !DILocalVariable(name: "ptr", arg: 1, scope: !2176, file: !1602, line: 371, type: !21)
!2181 = !DILocalVariable(name: "i", scope: !2176, file: !1602, line: 378, type: !1739)
!2182 = !DILocalVariable(name: "nibble", scope: !2176, file: !1602, line: 379, type: !155)
!2183 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 383, column: 11, scope: !2176)
!2185 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 381, column: 11, scope: !2176)
!2187 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 377, column: 9, scope: !2176)
!2189 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 376, column: 9, scope: !2176)
!2191 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 373, column: 14, scope: !2176)
!2194 = !DILocation(line: 372, column: 5, scope: !2176)
!2195 = !DILocation(line: 372, column: 9, scope: !2176)
!2196 = !DILocation(line: 0, scope: !2176)
!2197 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2193)
!2198 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2193)
!2199 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2192)
!2200 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2192)
!2201 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2192)
!2202 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2193)
!2203 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2190)
!2204 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2190)
!2205 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2190)
!2206 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2188)
!2207 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2188)
!2208 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2188)
!2209 = !DILocation(line: 378, column: 6, scope: !2176)
!2210 = !DILocation(line: 378, column: 14, scope: !2176)
!2211 = !DILocation(line: 379, column: 18, scope: !2176)
!2212 = !DILocation(line: 379, column: 22, scope: !2176)
!2213 = !DILocation(line: 379, column: 17, scope: !2176)
!2214 = !DILocation(line: 380, column: 6, scope: !2176)
!2215 = !DILocation(line: 380, column: 13, scope: !2176)
!2216 = !DILocation(line: 381, column: 12, scope: !2176)
!2217 = !DILocation(line: 381, column: 19, scope: !2176)
!2218 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2186)
!2219 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2186)
!2220 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2186)
!2221 = !DILocation(line: 385, column: 3, scope: !2176)
!2222 = !DILocation(line: 378, column: 45, scope: !2176)
!2223 = !DILocation(line: 378, column: 16, scope: !2176)
!2224 = !DILocation(line: 383, column: 12, scope: !2176)
!2225 = !DILocation(line: 383, column: 24, scope: !2176)
!2226 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2184)
!2227 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2184)
!2228 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2184)
!2229 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2230 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2231 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 290, column: 9, scope: !2229)
!2233 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2232)
!2234 = !DILocation(line: 214, column: 6, scope: !2156, inlinedAt: !2232)
!2235 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2232)
!2236 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2232)
!2237 = !DILocation(line: 291, column: 2, scope: !2229)
!2238 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !102, file: !102, line: 183, type: !2230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2239 = !DILocation(line: 184, column: 30, scope: !2238)
!2240 = !DILocation(line: 184, column: 16, scope: !2238)
!2241 = !DILocation(line: 185, column: 2, scope: !2238)
!2242 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !102, file: !102, line: 58, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2246)
!2243 = !DISubroutineType(cc: DW_CC_nocall, types: !2244)
!2244 = !{!432, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2246 = !{!2247, !2248, !2249, !2261, !2262}
!2247 = !DILocalVariable(name: "message", arg: 1, scope: !2242, file: !102, line: 58, type: !432)
!2248 = !DILocalVariable(name: "panicking", arg: 2, scope: !2242, file: !102, line: 58, type: !2245)
!2249 = !DILocalVariable(name: "frame", scope: !2242, file: !102, line: 65, type: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64, align: 64, dwarfAddressSpace: 0)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2252)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2258, !2259, !2260}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2257, align: 64, offset: 128)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !962)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2250, size: 64, align: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2245, size: 8, align: 8, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !432, size: 128, align: 64, offset: 256)
!2261 = !DILocalVariable(name: "PanicValue", scope: !2242, file: !102, line: 42, type: !432)
!2262 = !DILocalVariable(name: "Panicking", scope: !2242, file: !102, line: 41, type: !2245)
!2263 = !DILocation(line: 58, column: 6, scope: !2242)
!2264 = !DILocation(line: 62, column: 34, scope: !2044, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 65, column: 38, scope: !2242)
!2266 = !DILocation(line: 62, column: 2, scope: !2044, inlinedAt: !2265)
!2267 = !DILocation(line: 63, column: 5, scope: !2044, inlinedAt: !2265)
!2268 = !DILocation(line: 63, column: 7, scope: !2044, inlinedAt: !2265)
!2269 = !DILocation(line: 0, scope: !2044, inlinedAt: !2265)
!2270 = !DILocation(line: 64, column: 15, scope: !2044, inlinedAt: !2265)
!2271 = !DILocation(line: 66, column: 9, scope: !2044, inlinedAt: !2265)
!2272 = !DILocation(line: 65, column: 41, scope: !2242)
!2273 = !DILocation(line: 65, column: 3, scope: !2242)
!2274 = !DILocation(line: 66, column: 6, scope: !2242)
!2275 = !DILocation(line: 66, column: 12, scope: !2242)
!2276 = !DILocation(line: 0, scope: !2242)
!2277 = !DILocation(line: 67, column: 4, scope: !2242)
!2278 = !DILocation(line: 67, column: 23, scope: !2242)
!2279 = !DILocation(line: 67, column: 10, scope: !2242)
!2280 = !DILocation(line: 68, column: 4, scope: !2242)
!2281 = !DILocation(line: 68, column: 22, scope: !2242)
!2282 = !DILocation(line: 68, column: 10, scope: !2242)
!2283 = !DILocation(line: 69, column: 19, scope: !2242)
!2284 = !DILocation(line: 69, column: 18, scope: !2242)
!2285 = !DILocation(line: 73, column: 5, scope: !2242)
!2286 = !DILocation(line: 78, column: 13, scope: !2242)
!2287 = !DILocation(line: 79, column: 11, scope: !2242)
!2288 = !DILocation(line: 79, column: 10, scope: !2242)
!2289 = !DILocation(line: 80, column: 9, scope: !2242)
!2290 = !DILocation(line: 81, column: 7, scope: !2242)
!2291 = !DILocation(line: 82, column: 2, scope: !2242)
!2292 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2295)
!2293 = !DISubroutineType(cc: DW_CC_nocall, types: !2294)
!2294 = !{!432}
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2302, !2303, !2304, !2306, !2307, !2308, !2309, !2310, !2311, !2313, !2314, !2316, !2318, !2319, !2320, !2322}
!2296 = !DILocalVariable(name: "msg", arg: 1, scope: !2292, file: !1602, line: 293, type: !432)
!2297 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !47)
!2298 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !1739)
!2299 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !91)
!2300 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !2301)
!2301 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2302 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !60)
!2303 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !1699)
!2304 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !2305)
!2305 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2306 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !45)
!2307 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !98)
!2308 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !43)
!2309 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !11)
!2310 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !21)
!2311 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !2312)
!2312 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2313 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !450)
!2314 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !2315)
!2315 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2316 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !2317)
!2317 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2318 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !291)
!2319 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !431)
!2320 = !DILocalVariable(name: "msg", scope: !2292, file: !1602, line: 294, type: !2321)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !432)
!2322 = !DILocalVariable(name: "itf", scope: !2292, file: !1602, line: 345, type: !432)
!2323 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 338, column: 14, scope: !2292)
!2326 = !DILocation(line: 293, column: 6, scope: !2292)
!2327 = !DILocation(line: 294, column: 16, scope: !2292)
!2328 = !DILocation(line: 338, column: 15, scope: !2292)
!2329 = !DILocation(line: 12, column: 6, scope: !2151, inlinedAt: !2325)
!2330 = !DILocation(line: 13, column: 6, scope: !2151, inlinedAt: !2325)
!2331 = !DILocation(line: 13, column: 22, scope: !2151, inlinedAt: !2325)
!2332 = !DILocation(line: 0, scope: !2151, inlinedAt: !2325)
!2333 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2325)
!2334 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2325)
!2335 = !DILocation(line: 14, column: 12, scope: !2151, inlinedAt: !2325)
!2336 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2324)
!2337 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2324)
!2338 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2324)
!2339 = !DILocation(line: 13, column: 26, scope: !2151, inlinedAt: !2325)
!2340 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2325)
!2341 = !DILocation(line: 13, column: 16, scope: !2151, inlinedAt: !2325)
!2342 = !DILocation(line: 352, column: 2, scope: !2292)
!2343 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !102, file: !102, line: 54, type: !2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2344)
!2344 = !{!2345}
!2345 = !DILocalVariable(name: "message", arg: 1, scope: !2343, file: !102, line: 54, type: !432)
!2346 = !DILocation(line: 54, column: 6, scope: !2343)
!2347 = !DILocation(line: 55, column: 16, scope: !2343)
!2348 = !DILocation(line: 55, column: 15, scope: !2343)
!2349 = !DILocation(line: 56, column: 2, scope: !2343)
!2350 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1499, file: !1499, line: 60, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2351)
!2351 = !{!2352, !2353}
!2352 = !DILocalVariable(name: "x", arg: 1, scope: !2350, file: !1499, line: 60, type: !450)
!2353 = !DILocalVariable(name: "y", arg: 2, scope: !2350, file: !1499, line: 60, type: !450)
!2354 = !DILocation(line: 60, column: 6, scope: !2350)
!2355 = !DILocation(line: 61, column: 24, scope: !2350)
!2356 = !DILocation(line: 61, column: 27, scope: !2350)
!2357 = !DILocalVariable(name: "x", arg: 1, scope: !2358, file: !1499, line: 87, type: !450)
!2358 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1499, file: !1499, line: 87, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2359)
!2359 = !{!2357, !2360}
!2360 = !DILocalVariable(name: "y", arg: 2, scope: !2358, file: !1499, line: 87, type: !450)
!2361 = !DILocation(line: 87, column: 6, scope: !2358, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 61, column: 23, scope: !2350)
!2363 = !DILocation(line: 88, column: 38, scope: !2358, inlinedAt: !2362)
!2364 = !DILocation(line: 88, column: 41, scope: !2358, inlinedAt: !2362)
!2365 = !DILocalVariable(name: "x", arg: 1, scope: !2366, file: !1499, line: 101, type: !450)
!2366 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1499, file: !1499, line: 101, type: !2367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!450, !450, !1699, !1699}
!2369 = !{!2365, !2370, !2371, !2372, !2373, !2374}
!2370 = !DILocalVariable(name: "y", arg: 2, scope: !2366, file: !1499, line: 101, type: !450)
!2371 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2366, file: !1499, line: 101, type: !1699)
!2372 = !DILocalVariable(name: "magMask", arg: 4, scope: !2366, file: !1499, line: 101, type: !1699)
!2373 = !DILocalVariable(name: "xBits", scope: !2366, file: !1499, line: 102, type: !432)
!2374 = !DILocalVariable(name: "yBits", scope: !2366, file: !1499, line: 103, type: !432)
!2375 = !DILocation(line: 101, column: 6, scope: !2366, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 88, column: 37, scope: !2358, inlinedAt: !2362)
!2377 = !DILocation(line: 102, column: 11, scope: !2366, inlinedAt: !2376)
!2378 = !DILocation(line: 102, column: 2, scope: !2366, inlinedAt: !2376)
!2379 = !DILocation(line: 103, column: 11, scope: !2366, inlinedAt: !2376)
!2380 = !DILocation(line: 103, column: 2, scope: !2366, inlinedAt: !2376)
!2381 = !DILocation(line: 107, column: 7, scope: !2366, inlinedAt: !2376)
!2382 = !DILocation(line: 107, column: 16, scope: !2366, inlinedAt: !2376)
!2383 = !DILocation(line: 107, column: 13, scope: !2366, inlinedAt: !2376)
!2384 = !DILocation(line: 0, scope: !2366, inlinedAt: !2376)
!2385 = !DILocation(line: 109, column: 7, scope: !2366, inlinedAt: !2376)
!2386 = !DILocation(line: 109, column: 16, scope: !2366, inlinedAt: !2376)
!2387 = !DILocation(line: 109, column: 13, scope: !2366, inlinedAt: !2376)
!2388 = !DILocation(line: 118, column: 5, scope: !2366, inlinedAt: !2376)
!2389 = !DILocation(line: 118, column: 11, scope: !2366, inlinedAt: !2376)
!2390 = !DILocation(line: 121, column: 5, scope: !2366, inlinedAt: !2376)
!2391 = !DILocation(line: 121, column: 11, scope: !2366, inlinedAt: !2376)
!2392 = !DILocation(line: 124, column: 5, scope: !2366, inlinedAt: !2376)
!2393 = !DILocation(line: 124, column: 14, scope: !2366, inlinedAt: !2376)
!2394 = !DILocation(line: 124, column: 11, scope: !2366, inlinedAt: !2376)
!2395 = !DILocation(line: 61, column: 2, scope: !2350)
!2396 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1499, file: !1499, line: 65, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2312, !2312}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "x", arg: 1, scope: !2396, file: !1499, line: 65, type: !2312)
!2401 = !DILocalVariable(name: "y", arg: 2, scope: !2396, file: !1499, line: 65, type: !2312)
!2402 = !DILocation(line: 65, column: 6, scope: !2396)
!2403 = !DILocation(line: 66, column: 24, scope: !2396)
!2404 = !DILocation(line: 66, column: 27, scope: !2396)
!2405 = !DILocalVariable(name: "x", arg: 1, scope: !2406, file: !1499, line: 83, type: !2312)
!2406 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1499, file: !1499, line: 83, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2407)
!2407 = !{!2405, !2408}
!2408 = !DILocalVariable(name: "y", arg: 2, scope: !2406, file: !1499, line: 83, type: !2312)
!2409 = !DILocation(line: 83, column: 6, scope: !2406, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 66, column: 23, scope: !2396)
!2411 = !DILocation(line: 84, column: 38, scope: !2406, inlinedAt: !2410)
!2412 = !DILocation(line: 84, column: 41, scope: !2406, inlinedAt: !2410)
!2413 = !DILocalVariable(name: "x", arg: 1, scope: !2414, file: !1499, line: 101, type: !2312)
!2414 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1499, file: !1499, line: 101, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!2312, !2312, !60, !60}
!2417 = !{!2413, !2418, !2419, !2420, !2421, !2422}
!2418 = !DILocalVariable(name: "y", arg: 2, scope: !2414, file: !1499, line: 101, type: !2312)
!2419 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2414, file: !1499, line: 101, type: !60)
!2420 = !DILocalVariable(name: "magMask", arg: 4, scope: !2414, file: !1499, line: 101, type: !60)
!2421 = !DILocalVariable(name: "xBits", scope: !2414, file: !1499, line: 102, type: !432)
!2422 = !DILocalVariable(name: "yBits", scope: !2414, file: !1499, line: 103, type: !432)
!2423 = !DILocation(line: 101, column: 6, scope: !2414, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 84, column: 37, scope: !2406, inlinedAt: !2410)
!2425 = !DILocation(line: 102, column: 11, scope: !2414, inlinedAt: !2424)
!2426 = !DILocation(line: 102, column: 2, scope: !2414, inlinedAt: !2424)
!2427 = !DILocation(line: 103, column: 11, scope: !2414, inlinedAt: !2424)
!2428 = !DILocation(line: 103, column: 2, scope: !2414, inlinedAt: !2424)
!2429 = !DILocation(line: 107, column: 7, scope: !2414, inlinedAt: !2424)
!2430 = !DILocation(line: 107, column: 16, scope: !2414, inlinedAt: !2424)
!2431 = !DILocation(line: 107, column: 13, scope: !2414, inlinedAt: !2424)
!2432 = !DILocation(line: 0, scope: !2414, inlinedAt: !2424)
!2433 = !DILocation(line: 109, column: 7, scope: !2414, inlinedAt: !2424)
!2434 = !DILocation(line: 109, column: 16, scope: !2414, inlinedAt: !2424)
!2435 = !DILocation(line: 109, column: 13, scope: !2414, inlinedAt: !2424)
!2436 = !DILocation(line: 118, column: 5, scope: !2414, inlinedAt: !2424)
!2437 = !DILocation(line: 118, column: 11, scope: !2414, inlinedAt: !2424)
!2438 = !DILocation(line: 121, column: 5, scope: !2414, inlinedAt: !2424)
!2439 = !DILocation(line: 121, column: 11, scope: !2414, inlinedAt: !2424)
!2440 = !DILocation(line: 124, column: 5, scope: !2414, inlinedAt: !2424)
!2441 = !DILocation(line: 124, column: 14, scope: !2414, inlinedAt: !2424)
!2442 = !DILocation(line: 124, column: 11, scope: !2414, inlinedAt: !2424)
!2443 = !DILocation(line: 66, column: 2, scope: !2396)
!2444 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1499, file: !1499, line: 70, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2445)
!2445 = !{!2446, !2447}
!2446 = !DILocalVariable(name: "x", arg: 1, scope: !2444, file: !1499, line: 70, type: !450)
!2447 = !DILocalVariable(name: "y", arg: 2, scope: !2444, file: !1499, line: 70, type: !450)
!2448 = !DILocation(line: 70, column: 6, scope: !2444)
!2449 = !DILocation(line: 71, column: 24, scope: !2444)
!2450 = !DILocation(line: 71, column: 27, scope: !2444)
!2451 = !DILocalVariable(name: "x", arg: 1, scope: !2452, file: !1499, line: 95, type: !450)
!2452 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1499, file: !1499, line: 95, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2453)
!2453 = !{!2451, !2454}
!2454 = !DILocalVariable(name: "y", arg: 2, scope: !2452, file: !1499, line: 95, type: !450)
!2455 = !DILocation(line: 95, column: 6, scope: !2452, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 71, column: 23, scope: !2444)
!2457 = !DILocation(line: 96, column: 38, scope: !2452, inlinedAt: !2456)
!2458 = !DILocation(line: 96, column: 41, scope: !2452, inlinedAt: !2456)
!2459 = !DILocalVariable(name: "x", arg: 1, scope: !2460, file: !1499, line: 133, type: !450)
!2460 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1499, file: !1499, line: 133, type: !2367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2461)
!2461 = !{!2459, !2462, !2463, !2464, !2465, !2466, !2467}
!2462 = !DILocalVariable(name: "y", arg: 2, scope: !2460, file: !1499, line: 133, type: !450)
!2463 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2460, file: !1499, line: 133, type: !1699)
!2464 = !DILocalVariable(name: "magMask", arg: 4, scope: !2460, file: !1499, line: 133, type: !1699)
!2465 = !DILocalVariable(name: "xBits", scope: !2460, file: !1499, line: 134, type: !432)
!2466 = !DILocalVariable(name: "yBits", scope: !2460, file: !1499, line: 135, type: !432)
!2467 = !DILocalVariable(name: "maxNegNaN", scope: !2460, file: !1499, line: 149, type: !432)
!2468 = !DILocation(line: 133, column: 6, scope: !2460, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 96, column: 37, scope: !2452, inlinedAt: !2456)
!2470 = !DILocation(line: 134, column: 11, scope: !2460, inlinedAt: !2469)
!2471 = !DILocation(line: 134, column: 2, scope: !2460, inlinedAt: !2469)
!2472 = !DILocation(line: 135, column: 11, scope: !2460, inlinedAt: !2469)
!2473 = !DILocation(line: 135, column: 2, scope: !2460, inlinedAt: !2469)
!2474 = !DILocation(line: 142, column: 5, scope: !2460, inlinedAt: !2469)
!2475 = !DILocation(line: 142, column: 11, scope: !2460, inlinedAt: !2469)
!2476 = !DILocation(line: 0, scope: !2460, inlinedAt: !2469)
!2477 = !DILocation(line: 145, column: 5, scope: !2460, inlinedAt: !2469)
!2478 = !DILocation(line: 145, column: 11, scope: !2460, inlinedAt: !2469)
!2479 = !DILocation(line: 149, column: 16, scope: !2460, inlinedAt: !2469)
!2480 = !DILocation(line: 149, column: 2, scope: !2460, inlinedAt: !2469)
!2481 = !DILocation(line: 151, column: 7, scope: !2460, inlinedAt: !2469)
!2482 = !DILocation(line: 151, column: 16, scope: !2460, inlinedAt: !2469)
!2483 = !DILocation(line: 151, column: 13, scope: !2460, inlinedAt: !2469)
!2484 = !DILocation(line: 153, column: 7, scope: !2460, inlinedAt: !2469)
!2485 = !DILocation(line: 153, column: 16, scope: !2460, inlinedAt: !2469)
!2486 = !DILocation(line: 153, column: 13, scope: !2460, inlinedAt: !2469)
!2487 = !DILocation(line: 156, column: 5, scope: !2460, inlinedAt: !2469)
!2488 = !DILocation(line: 156, column: 14, scope: !2460, inlinedAt: !2469)
!2489 = !DILocation(line: 156, column: 11, scope: !2460, inlinedAt: !2469)
!2490 = !DILocation(line: 71, column: 2, scope: !2444)
!2491 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1499, file: !1499, line: 75, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2492)
!2492 = !{!2493, !2494}
!2493 = !DILocalVariable(name: "x", arg: 1, scope: !2491, file: !1499, line: 75, type: !2312)
!2494 = !DILocalVariable(name: "y", arg: 2, scope: !2491, file: !1499, line: 75, type: !2312)
!2495 = !DILocation(line: 75, column: 6, scope: !2491)
!2496 = !DILocation(line: 76, column: 24, scope: !2491)
!2497 = !DILocation(line: 76, column: 27, scope: !2491)
!2498 = !DILocalVariable(name: "x", arg: 1, scope: !2499, file: !1499, line: 91, type: !2312)
!2499 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1499, file: !1499, line: 91, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2500)
!2500 = !{!2498, !2501}
!2501 = !DILocalVariable(name: "y", arg: 2, scope: !2499, file: !1499, line: 91, type: !2312)
!2502 = !DILocation(line: 91, column: 6, scope: !2499, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 76, column: 23, scope: !2491)
!2504 = !DILocation(line: 92, column: 38, scope: !2499, inlinedAt: !2503)
!2505 = !DILocation(line: 92, column: 41, scope: !2499, inlinedAt: !2503)
!2506 = !DILocalVariable(name: "x", arg: 1, scope: !2507, file: !1499, line: 133, type: !2312)
!2507 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1499, file: !1499, line: 133, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2508)
!2508 = !{!2506, !2509, !2510, !2511, !2512, !2513, !2514}
!2509 = !DILocalVariable(name: "y", arg: 2, scope: !2507, file: !1499, line: 133, type: !2312)
!2510 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2507, file: !1499, line: 133, type: !60)
!2511 = !DILocalVariable(name: "magMask", arg: 4, scope: !2507, file: !1499, line: 133, type: !60)
!2512 = !DILocalVariable(name: "xBits", scope: !2507, file: !1499, line: 134, type: !432)
!2513 = !DILocalVariable(name: "yBits", scope: !2507, file: !1499, line: 135, type: !432)
!2514 = !DILocalVariable(name: "maxNegNaN", scope: !2507, file: !1499, line: 149, type: !432)
!2515 = !DILocation(line: 133, column: 6, scope: !2507, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 92, column: 37, scope: !2499, inlinedAt: !2503)
!2517 = !DILocation(line: 134, column: 11, scope: !2507, inlinedAt: !2516)
!2518 = !DILocation(line: 134, column: 2, scope: !2507, inlinedAt: !2516)
!2519 = !DILocation(line: 135, column: 11, scope: !2507, inlinedAt: !2516)
!2520 = !DILocation(line: 135, column: 2, scope: !2507, inlinedAt: !2516)
!2521 = !DILocation(line: 142, column: 5, scope: !2507, inlinedAt: !2516)
!2522 = !DILocation(line: 142, column: 11, scope: !2507, inlinedAt: !2516)
!2523 = !DILocation(line: 0, scope: !2507, inlinedAt: !2516)
!2524 = !DILocation(line: 145, column: 5, scope: !2507, inlinedAt: !2516)
!2525 = !DILocation(line: 145, column: 11, scope: !2507, inlinedAt: !2516)
!2526 = !DILocation(line: 149, column: 16, scope: !2507, inlinedAt: !2516)
!2527 = !DILocation(line: 149, column: 2, scope: !2507, inlinedAt: !2516)
!2528 = !DILocation(line: 151, column: 7, scope: !2507, inlinedAt: !2516)
!2529 = !DILocation(line: 151, column: 16, scope: !2507, inlinedAt: !2516)
!2530 = !DILocation(line: 151, column: 13, scope: !2507, inlinedAt: !2516)
!2531 = !DILocation(line: 153, column: 7, scope: !2507, inlinedAt: !2516)
!2532 = !DILocation(line: 153, column: 16, scope: !2507, inlinedAt: !2516)
!2533 = !DILocation(line: 153, column: 13, scope: !2507, inlinedAt: !2516)
!2534 = !DILocation(line: 156, column: 5, scope: !2507, inlinedAt: !2516)
!2535 = !DILocation(line: 156, column: 14, scope: !2507, inlinedAt: !2516)
!2536 = !DILocation(line: 156, column: 11, scope: !2507, inlinedAt: !2516)
!2537 = !DILocation(line: 76, column: 2, scope: !2491)
!2538 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1531, file: !1531, line: 46, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2539 = !DILocation(line: 62, column: 34, scope: !2044, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 193, column: 20, scope: !2541, inlinedAt: !2549)
!2541 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548}
!2543 = !DILocalVariable(name: "current", scope: !2541, file: !2, line: 193, type: !3)
!2544 = !DILocalVariable(name: "otherGoroutines", scope: !2541, file: !2, line: 99, type: !43)
!2545 = !DILocalVariable(name: "scanWaitGroup", scope: !2541, file: !2, line: 151, type: !79)
!2546 = !DILocalVariable(name: "activeTasks", scope: !2541, file: !2, line: 45, type: !3)
!2547 = !DILocalVariable(name: "t", scope: !2541, file: !2, line: 212, type: !3)
!2548 = !DILocalVariable(name: "t", scope: !2541, file: !2, line: 223, type: !3)
!2549 = distinct !DILocation(line: 8, column: 25, scope: !2550, inlinedAt: !2552)
!2550 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2551, file: !2551, line: 7, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2551 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2552 = distinct !DILocation(line: 48, column: 17, scope: !2538)
!2553 = !DILocation(line: 63, column: 5, scope: !2044, inlinedAt: !2540)
!2554 = !DILocation(line: 63, column: 7, scope: !2044, inlinedAt: !2540)
!2555 = !DILocation(line: 0, scope: !2044, inlinedAt: !2540)
!2556 = !DILocation(line: 64, column: 15, scope: !2044, inlinedAt: !2540)
!2557 = !DILocation(line: 66, column: 9, scope: !2044, inlinedAt: !2540)
!2558 = !DILocation(line: 193, column: 2, scope: !2541, inlinedAt: !2549)
!2559 = !DILocation(line: 147, column: 53, scope: !2090, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 196, column: 17, scope: !2541, inlinedAt: !2549)
!2561 = !DILocation(line: 183, column: 6, scope: !2097, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 147, column: 51, scope: !2090, inlinedAt: !2560)
!2563 = !DILocation(line: 196, column: 20, scope: !2541, inlinedAt: !2549)
!2564 = !DILocation(line: 0, scope: !2541, inlinedAt: !2549)
!2565 = !DILocation(line: 33, column: 5, scope: !1957, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 199, column: 22, scope: !2541, inlinedAt: !2549)
!2567 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !2566)
!2569 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !2568)
!2570 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !2568)
!2571 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !2568)
!2573 = !DILocation(line: 0, scope: !1957, inlinedAt: !2566)
!2574 = !DILocation(line: 43, column: 6, scope: !1957, inlinedAt: !2566)
!2575 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 43, column: 18, scope: !1957, inlinedAt: !2566)
!2577 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !2576)
!2578 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !2576)
!2580 = !DILocation(line: 43, column: 22, scope: !1957, inlinedAt: !2566)
!2581 = !DILocation(line: 45, column: 3, scope: !1957, inlinedAt: !2566)
!2582 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 45, column: 15, scope: !1957, inlinedAt: !2566)
!2584 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !2583)
!2585 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !2583)
!2586 = !DILocalVariable(name: "wg", arg: 1, scope: !2587, file: !2, line: 169, type: !2063)
!2587 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2588)
!2588 = !{!2586, !2589}
!2589 = !DILocalVariable(name: "val", scope: !2587, file: !2, line: 171, type: !43)
!2590 = !DILocation(line: 169, column: 22, scope: !2587, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 202, column: 21, scope: !2541, inlinedAt: !2549)
!2592 = !DILocation(line: 147, column: 53, scope: !2090, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 171, column: 19, scope: !2587, inlinedAt: !2591)
!2594 = !DILocation(line: 183, column: 6, scope: !2097, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 147, column: 51, scope: !2090, inlinedAt: !2593)
!2596 = !DILocation(line: 172, column: 10, scope: !2587, inlinedAt: !2591)
!2597 = !DILocation(line: 0, scope: !2587, inlinedAt: !2591)
!2598 = !DILocation(line: 175, column: 3, scope: !2587, inlinedAt: !2591)
!2599 = !DILocation(line: 175, column: 13, scope: !2587, inlinedAt: !2591)
!2600 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 175, column: 12, scope: !2587, inlinedAt: !2591)
!2602 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !2601)
!2603 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !2601)
!2604 = !DILocation(line: 172, column: 6, scope: !2587, inlinedAt: !2591)
!2605 = !DILocalVariable(name: "x", arg: 1, scope: !2606, file: !1912, line: 150, type: !1915)
!2606 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1912, file: !1912, line: 150, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2607)
!2607 = !{!2605, !2608}
!2608 = !DILocalVariable(name: "val", arg: 2, scope: !2606, file: !1912, line: 150, type: !43)
!2609 = !DILocation(line: 150, column: 51, scope: !2606, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 206, column: 16, scope: !2541, inlinedAt: !2549)
!2611 = !DILocation(line: 150, column: 56, scope: !2606, inlinedAt: !2610)
!2612 = !DILocalVariable(name: "addr", arg: 1, scope: !2613, file: !1923, line: 205, type: !1926)
!2613 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1923, file: !1923, line: 205, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2614)
!2614 = !{!2612, !2615}
!2615 = !DILocalVariable(name: "val", arg: 2, scope: !2613, file: !1923, line: 205, type: !43)
!2616 = !DILocation(line: 205, column: 6, scope: !2613, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 150, column: 49, scope: !2606, inlinedAt: !2610)
!2618 = !DILocation(line: 209, column: 33, scope: !2541, inlinedAt: !2549)
!2619 = !DILocation(line: 209, column: 3, scope: !2541, inlinedAt: !2549)
!2620 = !DILocation(line: 212, column: 12, scope: !2541, inlinedAt: !2549)
!2621 = !DILocation(line: 212, column: 7, scope: !2541, inlinedAt: !2549)
!2622 = !DILocation(line: 212, scope: !2541, inlinedAt: !2549)
!2623 = !DILocation(line: 212, column: 27, scope: !2541, inlinedAt: !2549)
!2624 = !DILocation(line: 213, column: 7, scope: !2541, inlinedAt: !2549)
!2625 = !DILocation(line: 213, column: 12, scope: !2541, inlinedAt: !2549)
!2626 = !DILocation(line: 213, column: 9, scope: !2541, inlinedAt: !2549)
!2627 = !DILocation(line: 214, column: 32, scope: !2541, inlinedAt: !2549)
!2628 = !DILocation(line: 214, column: 40, scope: !2541, inlinedAt: !2549)
!2629 = !DILocation(line: 214, column: 31, scope: !2541, inlinedAt: !2549)
!2630 = !DILocation(line: 212, column: 39, scope: !2541, inlinedAt: !2549)
!2631 = !DILocation(line: 212, column: 47, scope: !2541, inlinedAt: !2549)
!2632 = !DILocation(line: 212, column: 35, scope: !2541, inlinedAt: !2549)
!2633 = !DILocation(line: 212, column: 25, scope: !2541, inlinedAt: !2549)
!2634 = !DILocation(line: 169, column: 22, scope: !2587, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 219, column: 21, scope: !2541, inlinedAt: !2549)
!2636 = !DILocation(line: 147, column: 53, scope: !2090, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 171, column: 19, scope: !2587, inlinedAt: !2635)
!2638 = !DILocation(line: 183, column: 6, scope: !2097, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 147, column: 51, scope: !2090, inlinedAt: !2637)
!2640 = !DILocation(line: 172, column: 10, scope: !2587, inlinedAt: !2635)
!2641 = !DILocation(line: 0, scope: !2587, inlinedAt: !2635)
!2642 = !DILocation(line: 175, column: 3, scope: !2587, inlinedAt: !2635)
!2643 = !DILocation(line: 175, column: 13, scope: !2587, inlinedAt: !2635)
!2644 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 175, column: 12, scope: !2587, inlinedAt: !2635)
!2646 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !2645)
!2647 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !2645)
!2648 = !DILocation(line: 172, column: 6, scope: !2587, inlinedAt: !2635)
!2649 = !DILocation(line: 223, column: 11, scope: !2541, inlinedAt: !2549)
!2650 = !DILocation(line: 223, column: 6, scope: !2541, inlinedAt: !2549)
!2651 = !DILocation(line: 223, scope: !2541, inlinedAt: !2549)
!2652 = !DILocation(line: 223, column: 26, scope: !2541, inlinedAt: !2549)
!2653 = !DILocation(line: 224, column: 6, scope: !2541, inlinedAt: !2549)
!2654 = !DILocation(line: 224, column: 11, scope: !2541, inlinedAt: !2549)
!2655 = !DILocation(line: 224, column: 8, scope: !2541, inlinedAt: !2549)
!2656 = !DILocation(line: 225, column: 14, scope: !2541, inlinedAt: !2549)
!2657 = !DILocation(line: 225, column: 22, scope: !2541, inlinedAt: !2549)
!2658 = !DILocation(line: 225, column: 43, scope: !2541, inlinedAt: !2549)
!2659 = !DILocalVariable(name: "start", arg: 1, scope: !2660, file: !1531, line: 51, type: !21)
!2660 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1531, file: !1531, line: 51, type: !2661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!21, !21}
!2663 = !{!2659, !2664}
!2664 = !DILocalVariable(name: "end", arg: 2, scope: !2660, file: !1531, line: 51, type: !21)
!2665 = !DILocation(line: 52, column: 17, scope: !2660, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 225, column: 13, scope: !2541, inlinedAt: !2549)
!2667 = !DILocation(line: 52, column: 24, scope: !2660, inlinedAt: !2666)
!2668 = !DILocation(line: 52, column: 16, scope: !2660, inlinedAt: !2666)
!2669 = !DILocation(line: 223, column: 38, scope: !2541, inlinedAt: !2549)
!2670 = !DILocation(line: 223, column: 46, scope: !2541, inlinedAt: !2549)
!2671 = !DILocation(line: 223, column: 34, scope: !2541, inlinedAt: !2549)
!2672 = !DILocation(line: 223, column: 24, scope: !2541, inlinedAt: !2549)
!2673 = !DILocation(line: 230, column: 18, scope: !2541, inlinedAt: !2549)
!2674 = !DILocalVariable(name: "found", arg: 1, scope: !2675, file: !2676, line: 95, type: !277)
!2675 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2676, file: !2676, line: 95, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2679)
!2676 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!277}
!2679 = !{!2674, !2680, !2681, !2682, !2695, !2696, !2697, !2704, !2705}
!2680 = !DILocalVariable(name: "headerPtr", scope: !2675, file: !2676, line: 103, type: !9)
!2681 = !DILocalVariable(name: "i", scope: !2675, file: !2676, line: 104, type: !1739)
!2682 = !DILocalVariable(name: "header", scope: !2675, file: !2676, line: 111, type: !2683)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64, align: 64, dwarfAddressSpace: 0)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2685)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2695 = !DILocalVariable(name: "start", scope: !2675, file: !2676, line: 113, type: !21)
!2696 = !DILocalVariable(name: "end", scope: !2675, file: !2676, line: 114, type: !21)
!2697 = !DILocalVariable(name: "header", scope: !2675, file: !2676, line: 118, type: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64, align: 64, dwarfAddressSpace: 0)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2700)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2701)
!2701 = !{!2687, !2689, !2690, !2691, !2692, !2693, !2702, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2704 = !DILocalVariable(name: "start", scope: !2675, file: !2676, line: 120, type: !21)
!2705 = !DILocalVariable(name: "end", scope: !2675, file: !2676, line: 121, type: !21)
!2706 = !DILocation(line: 95, column: 6, scope: !2675, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 16, column: 13, scope: !2708, inlinedAt: !2709)
!2708 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2551, file: !2551, line: 15, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2709 = distinct !DILocation(line: 233, column: 15, scope: !2541, inlinedAt: !2549)
!2710 = !DILocation(line: 103, column: 2, scope: !2675, inlinedAt: !2707)
!2711 = !DILocation(line: 104, column: 6, scope: !2675, inlinedAt: !2707)
!2712 = !DILocation(line: 104, column: 33, scope: !2675, inlinedAt: !2707)
!2713 = !DILocation(line: 104, column: 16, scope: !2675, inlinedAt: !2707)
!2714 = !DILocation(line: 0, scope: !2675, inlinedAt: !2707)
!2715 = !DILocation(line: 103, column: 80, scope: !2675, inlinedAt: !2707)
!2716 = !DILocation(line: 103, column: 67, scope: !2675, inlinedAt: !2707)
!2717 = !DILocation(line: 103, column: 29, scope: !2675, inlinedAt: !2707)
!2718 = !DILocation(line: 112, column: 14, scope: !2675, inlinedAt: !2707)
!2719 = !DILocation(line: 104, column: 14, scope: !2675, inlinedAt: !2707)
!2720 = !DILocation(line: 111, column: 36, scope: !2675, inlinedAt: !2707)
!2721 = !DILocation(line: 112, column: 7, scope: !2675, inlinedAt: !2707)
!2722 = !DILocation(line: 112, column: 20, scope: !2675, inlinedAt: !2707)
!2723 = !DILocation(line: 112, column: 34, scope: !2675, inlinedAt: !2707)
!2724 = !DILocation(line: 112, column: 41, scope: !2675, inlinedAt: !2707)
!2725 = !DILocation(line: 112, column: 46, scope: !2675, inlinedAt: !2707)
!2726 = !DILocation(line: 112, column: 52, scope: !2675, inlinedAt: !2707)
!2727 = !DILocation(line: 113, column: 14, scope: !2675, inlinedAt: !2707)
!2728 = !DILocation(line: 113, column: 21, scope: !2675, inlinedAt: !2707)
!2729 = !DILocation(line: 115, column: 5, scope: !2675, inlinedAt: !2707)
!2730 = !DILocation(line: 115, column: 11, scope: !2675, inlinedAt: !2707)
!2731 = !DILocation(line: 115, column: 18, scope: !2675, inlinedAt: !2707)
!2732 = !DILocation(line: 114, column: 27, scope: !2675, inlinedAt: !2707)
!2733 = !DILocation(line: 114, column: 18, scope: !2675, inlinedAt: !2707)
!2734 = !DILocation(line: 52, column: 17, scope: !2660, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 115, column: 10, scope: !2675, inlinedAt: !2707)
!2736 = !DILocation(line: 52, column: 24, scope: !2660, inlinedAt: !2735)
!2737 = !DILocation(line: 52, column: 16, scope: !2660, inlinedAt: !2735)
!2738 = !DILocation(line: 125, column: 26, scope: !2675, inlinedAt: !2707)
!2739 = !DILocation(line: 125, column: 48, scope: !2675, inlinedAt: !2707)
!2740 = !DILocation(line: 125, column: 25, scope: !2675, inlinedAt: !2707)
!2741 = !DILocation(line: 125, column: 3, scope: !2675, inlinedAt: !2707)
!2742 = !DILocation(line: 104, column: 41, scope: !2675, inlinedAt: !2707)
!2743 = !DILocation(line: 104, column: 21, scope: !2675, inlinedAt: !2707)
!2744 = !DILocation(line: 49, column: 2, scope: !2538)
!2745 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2551, file: !2551, line: 23, type: !2746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2747)
!2746 = !DISubroutineType(types: !2178)
!2747 = !{!2748}
!2748 = !DILocalVariable(name: "sp", arg: 1, scope: !2745, file: !2551, line: 23, type: !21)
!2749 = !DILocation(line: 23, column: 6, scope: !2745)
!2750 = !DILocation(line: 24, column: 12, scope: !2745)
!2751 = !DILocation(line: 62, column: 34, scope: !2044, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 290, column: 16, scope: !2753, inlinedAt: !2754)
!2753 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456)
!2754 = distinct !DILocation(line: 24, column: 29, scope: !2745)
!2755 = !DILocation(line: 62, column: 2, scope: !2044, inlinedAt: !2752)
!2756 = !DILocation(line: 63, column: 5, scope: !2044, inlinedAt: !2752)
!2757 = !DILocation(line: 63, column: 7, scope: !2044, inlinedAt: !2752)
!2758 = !DILocation(line: 0, scope: !2044, inlinedAt: !2752)
!2759 = !DILocation(line: 64, column: 15, scope: !2044, inlinedAt: !2752)
!2760 = !DILocation(line: 66, column: 9, scope: !2044, inlinedAt: !2752)
!2761 = !DILocation(line: 290, column: 25, scope: !2753, inlinedAt: !2754)
!2762 = !DILocation(line: 51, column: 6, scope: !2660, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 24, column: 11, scope: !2745)
!2764 = !DILocation(line: 52, column: 17, scope: !2660, inlinedAt: !2763)
!2765 = !DILocation(line: 52, column: 24, scope: !2660, inlinedAt: !2763)
!2766 = !DILocation(line: 52, column: 16, scope: !2660, inlinedAt: !2763)
!2767 = !DILocation(line: 25, column: 2, scope: !2745)
!2768 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !123, file: !123, line: 80, type: !2769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!60, !126}
!2771 = !{!2772, !2773, !2774, !2775, !2776}
!2772 = !DILocalVariable(name: "argc", arg: 1, scope: !2768, file: !123, line: 80, type: !60)
!2773 = !DILocalVariable(name: "argv", arg: 2, scope: !2768, file: !123, line: 80, type: !126)
!2774 = !DILocalVariable(name: "main_argc", scope: !2768, file: !123, line: 105, type: !60)
!2775 = !DILocalVariable(name: "main_argv", scope: !2768, file: !123, line: 106, type: !126)
!2776 = !DILocalVariable(name: "stackTop", scope: !2768, file: !123, line: 75, type: !21)
!2777 = !DILocation(line: 80, column: 6, scope: !2768)
!2778 = !DILocation(line: 87, column: 14, scope: !2768)
!2779 = !DILocation(line: 87, column: 2, scope: !2768)
!2780 = !DILocation(line: 88, column: 14, scope: !2768)
!2781 = !DILocation(line: 88, column: 2, scope: !2768)
!2782 = !DILocation(line: 92, column: 31, scope: !2768)
!2783 = !DILocation(line: 58, column: 6, scope: !2055, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 27, column: 26, scope: !2785, inlinedAt: !2787)
!2785 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2786, file: !2786, line: 26, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2786 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2787 = distinct !DILocation(line: 97, column: 35, scope: !2768)
!2788 = !DILocation(line: 27, column: 16, scope: !2785, inlinedAt: !2787)
!2789 = !DILocation(line: 97, column: 2, scope: !2768)
!2790 = !DILocation(line: 98, column: 9, scope: !2768)
!2791 = !DILocation(line: 101, column: 2, scope: !2768)
!2792 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !123, file: !123, line: 135, type: !2230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2793 = !DILocation(line: 137, column: 22, scope: !2794, inlinedAt: !2798)
!2794 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2676, file: !2676, line: 137, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2795)
!2795 = !{!2796, !2797}
!2796 = !DILocalVariable(name: "read", scope: !2794, file: !2676, line: 138, type: !43)
!2797 = !DILocalVariable(name: "n", scope: !2794, file: !2676, line: 137, type: !11)
!2798 = distinct !DILocation(line: 27, column: 22, scope: !2799, inlinedAt: !2804)
!2799 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1494, file: !1494, line: 26, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2800)
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "r", scope: !2799, file: !1494, line: 27, type: !11)
!2802 = !DILocalVariable(name: "xorshift64State", scope: !2799, file: !1494, line: 52, type: !11)
!2803 = !DILocalVariable(name: "xorshift32State", scope: !2799, file: !1494, line: 32, type: !43)
!2804 = distinct !DILocation(line: 24, column: 10, scope: !2805, inlinedAt: !2808)
!2805 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !137, file: !137, line: 23, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2806)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "stackTop", scope: !2805, file: !123, line: 75, type: !21)
!2808 = distinct !DILocation(line: 136, column: 5, scope: !2792)
!2809 = !DILocation(line: 138, column: 24, scope: !2794, inlinedAt: !2798)
!2810 = !DILocation(line: 138, column: 2, scope: !2794, inlinedAt: !2798)
!2811 = !DILocation(line: 139, column: 5, scope: !2794, inlinedAt: !2798)
!2812 = !DILocation(line: 0, scope: !2794, inlinedAt: !2798)
!2813 = !DILocation(line: 27, column: 2, scope: !2799, inlinedAt: !2804)
!2814 = !DILocation(line: 28, column: 27, scope: !2799, inlinedAt: !2804)
!2815 = !DILocation(line: 28, column: 2, scope: !2799, inlinedAt: !2804)
!2816 = !DILocation(line: 29, column: 27, scope: !2799, inlinedAt: !2804)
!2817 = !DILocation(line: 29, column: 2, scope: !2799, inlinedAt: !2804)
!2818 = !DILocation(line: 35, column: 12, scope: !2819, inlinedAt: !2820)
!2819 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1531, file: !1531, line: 34, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2820 = distinct !DILocation(line: 25, column: 10, scope: !2805, inlinedAt: !2808)
!2821 = !DILocation(line: 39, column: 8, scope: !2819, inlinedAt: !2820)
!2822 = !DILocation(line: 26, column: 12, scope: !2805, inlinedAt: !2808)
!2823 = !DILocalVariable(name: "sp", arg: 1, scope: !2824, file: !2, line: 55, type: !21)
!2824 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1456, retainedNodes: !2825)
!2825 = !{!2823, !2826}
!2826 = !DILocalVariable(name: "stackTop", scope: !2824, file: !2, line: 24, type: !21)
!2827 = !DILocation(line: 55, column: 6, scope: !2824, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 26, column: 11, scope: !2805, inlinedAt: !2808)
!2829 = !DILocation(line: 56, column: 28, scope: !2824, inlinedAt: !2828)
!2830 = !DILocation(line: 56, column: 17, scope: !2824, inlinedAt: !2828)
!2831 = !DILocation(line: 57, column: 18, scope: !2824, inlinedAt: !2828)
!2832 = !DILocation(line: 28, column: 10, scope: !2805, inlinedAt: !2808)
!2833 = !DILocation(line: 137, column: 2, scope: !2792)
!2834 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !123, file: !123, line: 148, type: !2835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!60, !21}
!2837 = !{!2838, !2839}
!2838 = !DILocalVariable(name: "sig", arg: 1, scope: !2834, file: !123, line: 148, type: !60)
!2839 = !DILocalVariable(name: "addr", arg: 2, scope: !2834, file: !123, line: 148, type: !21)
!2840 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 158, column: 14, scope: !2834)
!2843 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 290, column: 9, scope: !2229, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 169, column: 10, scope: !2834)
!2846 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 90, column: 10, scope: !2848, inlinedAt: !2855)
!2848 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2854}
!2850 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !1602, line: 76, type: !11)
!2851 = !DILocalVariable(name: "firstdigit", scope: !2848, file: !1602, line: 79, type: !1739)
!2852 = !DILocalVariable(name: "i", scope: !2848, file: !1602, line: 80, type: !1739)
!2853 = !DILocalVariable(name: "digit", scope: !2848, file: !1602, line: 81, type: !155)
!2854 = !DILocalVariable(name: "i", scope: !2848, file: !1602, line: 89, type: !1739)
!2855 = distinct !DILocation(line: 62, column: 13, scope: !2856, inlinedAt: !2861)
!2856 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !2857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!43}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "n", arg: 1, scope: !2856, file: !1602, line: 61, type: !43)
!2861 = distinct !DILocation(line: 72, column: 13, scope: !2862, inlinedAt: !2865)
!2862 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !2863)
!2863 = !{!2864}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2862, file: !1602, line: 65, type: !60)
!2865 = distinct !DILocation(line: 169, column: 10, scope: !2834)
!2866 = !DILocation(line: 76, column: 6, scope: !2848, inlinedAt: !2855)
!2867 = !DILocation(line: 77, column: 2, scope: !2848, inlinedAt: !2855)
!2868 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 69, column: 10, scope: !2862, inlinedAt: !2865)
!2870 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 290, column: 9, scope: !2229, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 167, column: 10, scope: !2834)
!2873 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 167, column: 10, scope: !2834)
!2876 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 290, column: 9, scope: !2229, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 165, column: 10, scope: !2834)
!2879 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 165, column: 10, scope: !2834)
!2882 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 290, column: 9, scope: !2229, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 163, column: 10, scope: !2834)
!2885 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 163, column: 10, scope: !2834)
!2888 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 160, column: 13, scope: !2834)
!2891 = !DILocation(line: 215, column: 2, scope: !2156, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 14, column: 10, scope: !2151, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 155, column: 14, scope: !2834)
!2894 = !DILocation(line: 148, column: 6, scope: !2834)
!2895 = !DILocation(line: 154, column: 5, scope: !2834)
!2896 = !DILocation(line: 154, column: 10, scope: !2834)
!2897 = !DILocation(line: 0, scope: !2834)
!2898 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2893)
!2899 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2893)
!2900 = !DILocation(line: 14, column: 12, scope: !2151, inlinedAt: !2893)
!2901 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2892)
!2902 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2892)
!2903 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2892)
!2904 = !DILocation(line: 13, column: 26, scope: !2151, inlinedAt: !2893)
!2905 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2893)
!2906 = !DILocation(line: 13, column: 16, scope: !2151, inlinedAt: !2893)
!2907 = !DILocation(line: 0, scope: !2151, inlinedAt: !2893)
!2908 = !DILocation(line: 156, column: 12, scope: !2834)
!2909 = !DILocation(line: 156, column: 11, scope: !2834)
!2910 = !DILocation(line: 12, column: 6, scope: !2151, inlinedAt: !2890)
!2911 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2890)
!2912 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2890)
!2913 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2889)
!2914 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2889)
!2915 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2889)
!2916 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2890)
!2917 = !DILocation(line: 161, column: 9, scope: !2834)
!2918 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !2919)
!2919 = !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !2920)
!2920 = !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !2921)
!2921 = !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !2897)
!2922 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !137, file: !137, line: 138, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2923 = !DILocation(line: 33, column: 5, scope: !1957, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 163, column: 10, scope: !2834)
!2926 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !2924)
!2928 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !2927)
!2929 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !2927)
!2930 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !2927)
!2932 = !DILocation(line: 0, scope: !1957, inlinedAt: !2924)
!2933 = !DILocation(line: 43, column: 6, scope: !1957, inlinedAt: !2924)
!2934 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 43, column: 18, scope: !1957, inlinedAt: !2924)
!2936 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !2935)
!2937 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !2935)
!2939 = !DILocation(line: 43, column: 22, scope: !1957, inlinedAt: !2924)
!2940 = !DILocation(line: 45, column: 3, scope: !1957, inlinedAt: !2924)
!2941 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 45, column: 15, scope: !1957, inlinedAt: !2924)
!2943 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !2942)
!2944 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !2942)
!2945 = !DILocation(line: 12, column: 6, scope: !2151, inlinedAt: !2887)
!2946 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2887)
!2947 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2887)
!2948 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2886)
!2949 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2886)
!2950 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2886)
!2951 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2887)
!2952 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2883)
!2953 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2883)
!2954 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2883)
!2955 = !DILocation(line: 50, column: 12, scope: !1901, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 143, column: 18, scope: !2957, inlinedAt: !2958)
!2957 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !137, file: !137, line: 142, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490)
!2958 = distinct !DILocation(line: 163, column: 10, scope: !2834)
!2959 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 50, column: 24, scope: !1901, inlinedAt: !2956)
!2961 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !2960)
!2962 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !2960)
!2964 = !DILocation(line: 50, column: 29, scope: !1901, inlinedAt: !2956)
!2965 = !DILocation(line: 0, scope: !1901, inlinedAt: !2956)
!2966 = !DILocation(line: 52, column: 8, scope: !1901, inlinedAt: !2956)
!2967 = !DILocation(line: 54, column: 19, scope: !1936, inlinedAt: !2968)
!2968 = !DILocation(line: 55, column: 15, scope: !1901, inlinedAt: !2969)
!2969 = !DILocation(line: 143, column: 18, scope: !2957, inlinedAt: !2897)
!2970 = !DILocation(line: 180, column: 7, scope: !2834)
!2971 = !DILocation(line: 180, column: 8, scope: !2834)
!2972 = !DILocation(line: 181, column: 2, scope: !2834)
!2973 = !DILocation(line: 33, column: 5, scope: !1957, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 165, column: 10, scope: !2834)
!2976 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !2974)
!2978 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !2977)
!2979 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !2977)
!2980 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !2977)
!2982 = !DILocation(line: 0, scope: !1957, inlinedAt: !2974)
!2983 = !DILocation(line: 43, column: 6, scope: !1957, inlinedAt: !2974)
!2984 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 43, column: 18, scope: !1957, inlinedAt: !2974)
!2986 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !2985)
!2987 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !2985)
!2989 = !DILocation(line: 43, column: 22, scope: !1957, inlinedAt: !2974)
!2990 = !DILocation(line: 45, column: 3, scope: !1957, inlinedAt: !2974)
!2991 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 45, column: 15, scope: !1957, inlinedAt: !2974)
!2993 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !2992)
!2994 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !2992)
!2995 = !DILocation(line: 12, column: 6, scope: !2151, inlinedAt: !2881)
!2996 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2881)
!2997 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2881)
!2998 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2880)
!2999 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2880)
!3000 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2880)
!3001 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2881)
!3002 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2877)
!3003 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2877)
!3004 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2877)
!3005 = !DILocation(line: 50, column: 12, scope: !1901, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 143, column: 18, scope: !2957, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 165, column: 10, scope: !2834)
!3008 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 50, column: 24, scope: !1901, inlinedAt: !3006)
!3010 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !3009)
!3011 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !3009)
!3013 = !DILocation(line: 50, column: 29, scope: !1901, inlinedAt: !3006)
!3014 = !DILocation(line: 0, scope: !1901, inlinedAt: !3006)
!3015 = !DILocation(line: 52, column: 8, scope: !1901, inlinedAt: !3006)
!3016 = !DILocation(line: 33, column: 5, scope: !1957, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 167, column: 10, scope: !2834)
!3019 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !3017)
!3021 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !3020)
!3022 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !3020)
!3023 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !3020)
!3025 = !DILocation(line: 0, scope: !1957, inlinedAt: !3017)
!3026 = !DILocation(line: 43, column: 6, scope: !1957, inlinedAt: !3017)
!3027 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 43, column: 18, scope: !1957, inlinedAt: !3017)
!3029 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !3028)
!3030 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !3028)
!3032 = !DILocation(line: 43, column: 22, scope: !1957, inlinedAt: !3017)
!3033 = !DILocation(line: 45, column: 3, scope: !1957, inlinedAt: !3017)
!3034 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 45, column: 15, scope: !1957, inlinedAt: !3017)
!3036 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !3035)
!3037 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !3035)
!3038 = !DILocation(line: 12, column: 6, scope: !2151, inlinedAt: !2875)
!3039 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2875)
!3040 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2875)
!3041 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2874)
!3042 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2874)
!3043 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2874)
!3044 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2875)
!3045 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2871)
!3046 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2871)
!3047 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2871)
!3048 = !DILocation(line: 50, column: 12, scope: !1901, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 143, column: 18, scope: !2957, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 167, column: 10, scope: !2834)
!3051 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 50, column: 24, scope: !1901, inlinedAt: !3049)
!3053 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !3052)
!3054 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !3052)
!3056 = !DILocation(line: 50, column: 29, scope: !1901, inlinedAt: !3049)
!3057 = !DILocation(line: 0, scope: !1901, inlinedAt: !3049)
!3058 = !DILocation(line: 52, column: 8, scope: !1901, inlinedAt: !3049)
!3059 = !DILocation(line: 169, column: 11, scope: !2834)
!3060 = !DILocation(line: 33, column: 5, scope: !1957, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 139, column: 16, scope: !2922, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 169, column: 10, scope: !2834)
!3063 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 33, column: 27, scope: !1957, inlinedAt: !3061)
!3065 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !3064)
!3066 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !3064)
!3067 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !3064)
!3069 = !DILocation(line: 0, scope: !1957, inlinedAt: !3061)
!3070 = !DILocation(line: 43, column: 6, scope: !1957, inlinedAt: !3061)
!3071 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 43, column: 18, scope: !1957, inlinedAt: !3061)
!3073 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !3072)
!3074 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !3072)
!3076 = !DILocation(line: 43, column: 22, scope: !1957, inlinedAt: !3061)
!3077 = !DILocation(line: 45, column: 3, scope: !1957, inlinedAt: !3061)
!3078 = !DILocation(line: 26, column: 46, scope: !1992, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 45, column: 15, scope: !1957, inlinedAt: !3061)
!3080 = !DILocation(line: 26, column: 58, scope: !1992, inlinedAt: !3079)
!3081 = !DILocation(line: 26, column: 19, scope: !1992, inlinedAt: !3079)
!3082 = !DILocation(line: 68, column: 5, scope: !2862, inlinedAt: !2865)
!3083 = !DILocation(line: 68, column: 7, scope: !2862, inlinedAt: !2865)
!3084 = !DILocation(line: 0, scope: !2862, inlinedAt: !2865)
!3085 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2869)
!3086 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2869)
!3087 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2869)
!3088 = !DILocation(line: 70, column: 8, scope: !2862, inlinedAt: !2865)
!3089 = !DILocation(line: 70, column: 7, scope: !2862, inlinedAt: !2865)
!3090 = !DILocation(line: 70, column: 3, scope: !2862, inlinedAt: !2865)
!3091 = !DILocation(line: 65, column: 17, scope: !2862, inlinedAt: !2865)
!3092 = !DILocation(line: 72, column: 21, scope: !2862, inlinedAt: !2865)
!3093 = !DILocation(line: 62, column: 21, scope: !2856, inlinedAt: !2861)
!3094 = !DILocation(line: 62, column: 20, scope: !2856, inlinedAt: !2861)
!3095 = !DILocation(line: 79, column: 2, scope: !2848, inlinedAt: !2855)
!3096 = !DILocation(line: 80, column: 6, scope: !2848, inlinedAt: !2855)
!3097 = !DILocation(line: 0, scope: !2848, inlinedAt: !2855)
!3098 = !DILocation(line: 89, column: 23, scope: !2848, inlinedAt: !2855)
!3099 = !DILocation(line: 89, column: 25, scope: !2848, inlinedAt: !2855)
!3100 = !DILocation(line: 80, column: 15, scope: !2848, inlinedAt: !2855)
!3101 = !DILocation(line: 81, column: 17, scope: !2848, inlinedAt: !2855)
!3102 = !DILocation(line: 81, column: 18, scope: !2848, inlinedAt: !2855)
!3103 = !DILocation(line: 81, column: 16, scope: !2848, inlinedAt: !2855)
!3104 = !DILocation(line: 82, column: 15, scope: !2848, inlinedAt: !2855)
!3105 = !DILocation(line: 82, column: 9, scope: !2848, inlinedAt: !2855)
!3106 = !DILocation(line: 83, column: 12, scope: !2848, inlinedAt: !2855)
!3107 = !DILocation(line: 86, column: 3, scope: !2848, inlinedAt: !2855)
!3108 = !DILocation(line: 80, column: 23, scope: !2848, inlinedAt: !2855)
!3109 = !DILocation(line: 80, column: 17, scope: !2848, inlinedAt: !2855)
!3110 = !DILocation(line: 90, column: 18, scope: !2848, inlinedAt: !2855)
!3111 = !DILocation(line: 90, column: 17, scope: !2848, inlinedAt: !2855)
!3112 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2847)
!3113 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2847)
!3114 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2847)
!3115 = !DILocation(line: 89, column: 31, scope: !2848, inlinedAt: !2855)
!3116 = !DILocation(line: 92, column: 2, scope: !2848, inlinedAt: !2855)
!3117 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2844)
!3118 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2844)
!3119 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2844)
!3120 = !DILocation(line: 50, column: 12, scope: !1901, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 143, column: 18, scope: !2957, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 169, column: 10, scope: !2834)
!3123 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 50, column: 24, scope: !1901, inlinedAt: !3121)
!3125 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !3124)
!3126 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !3124)
!3128 = !DILocation(line: 50, column: 29, scope: !1901, inlinedAt: !3121)
!3129 = !DILocation(line: 0, scope: !1901, inlinedAt: !3121)
!3130 = !DILocation(line: 52, column: 8, scope: !1901, inlinedAt: !3121)
!3131 = !DILocation(line: 14, column: 13, scope: !2151, inlinedAt: !2842)
!3132 = !DILocation(line: 14, column: 11, scope: !2151, inlinedAt: !2842)
!3133 = !DILocation(line: 14, column: 12, scope: !2151, inlinedAt: !2842)
!3134 = !DILocation(line: 215, column: 17, scope: !2156, inlinedAt: !2841)
!3135 = !DILocation(line: 216, column: 12, scope: !2156, inlinedAt: !2841)
!3136 = !DILocation(line: 217, column: 2, scope: !2156, inlinedAt: !2841)
!3137 = !DILocation(line: 13, column: 26, scope: !2151, inlinedAt: !2842)
!3138 = !DILocation(line: 13, column: 14, scope: !2151, inlinedAt: !2842)
!3139 = !DILocation(line: 13, column: 16, scope: !2151, inlinedAt: !2842)
!3140 = !DILocation(line: 0, scope: !2151, inlinedAt: !2842)
!3141 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !123, file: !123, line: 420, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1490, retainedNodes: !3142)
!3142 = !{!3143, !3144, !3145, !3146}
!3143 = !DILocalVariable(name: "s", arg: 1, scope: !3141, file: !123, line: 420, type: !60)
!3144 = !DILocalVariable(name: "mask", scope: !3141, file: !123, line: 427, type: !43)
!3145 = !DILocalVariable(name: "val", scope: !3141, file: !123, line: 428, type: !43)
!3146 = !DILocalVariable(name: "swapped", scope: !3141, file: !123, line: 429, type: !47)
!3147 = !DILocation(line: 420, column: 6, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3141)
!3149 = !DILocation(line: 427, column: 31, scope: !3141)
!3150 = !DILocation(line: 427, column: 3, scope: !3141)
!3151 = !DILocation(line: 147, column: 18, scope: !2090, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 428, column: 30, scope: !3141)
!3153 = !DILocation(line: 147, column: 53, scope: !2090, inlinedAt: !3152)
!3154 = !DILocation(line: 183, column: 6, scope: !2097, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 147, column: 51, scope: !2090, inlinedAt: !3152)
!3156 = !DILocation(line: 428, column: 3, scope: !3141)
!3157 = !DILocation(line: 429, column: 45, scope: !3141)
!3158 = !DILocation(line: 429, column: 50, scope: !3141)
!3159 = !DILocation(line: 429, column: 54, scope: !3141)
!3160 = !DILocation(line: 429, column: 53, scope: !3141)
!3161 = !DILocation(line: 156, column: 18, scope: !1963, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 429, column: 44, scope: !3141)
!3163 = !DILocation(line: 157, column: 31, scope: !1963, inlinedAt: !3162)
!3164 = !DILocation(line: 157, column: 36, scope: !1963, inlinedAt: !3162)
!3165 = !DILocation(line: 157, column: 41, scope: !1963, inlinedAt: !3162)
!3166 = !DILocation(line: 99, column: 6, scope: !1974, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 157, column: 29, scope: !1963, inlinedAt: !3162)
!3168 = !DILocation(line: 429, column: 3, scope: !3141)
!3169 = !DILocation(line: 430, column: 6, scope: !3141)
!3170 = !DILocation(line: 153, column: 18, scope: !1911, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 437, column: 21, scope: !3141)
!3172 = !DILocation(line: 153, column: 69, scope: !1911, inlinedAt: !3171)
!3173 = !DILocation(line: 153, column: 74, scope: !1911, inlinedAt: !3171)
!3174 = !DILocation(line: 77, column: 6, scope: !1922, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 153, column: 67, scope: !1911, inlinedAt: !3171)
!3176 = !DILocation(line: 437, column: 25, scope: !3141)
!3177 = !DILocation(line: 58, column: 17, scope: !2084, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 441, column: 22, scope: !3141)
!3179 = !DILocation(line: 59, column: 50, scope: !2084, inlinedAt: !3178)
!3180 = !DILocation(line: 59, column: 23, scope: !2084, inlinedAt: !3178)
!3181 = !DILocation(line: 443, column: 2, scope: !3141)
!3182 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3183, file: !3183, line: 6, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3184)
!3183 = !DIFile(filename: "CALCULATE_VOLUME_DODECAHEDRON_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/CALCULATE_VOLUME_DODECAHEDRON")
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "side", arg: 1, scope: !3182, file: !3183, line: 6, type: !1739)
!3186 = !DILocalVariable(name: "x", arg: 1, scope: !3187, file: !3188, line: 93, type: !450)
!3187 = distinct !DISubprogram(name: "math.Sqrt", linkageName: "math.Sqrt", scope: !3188, file: !3188, line: 93, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3189)
!3188 = !DIFile(filename: "sqrt.go", directory: "/usr/local/go/src/math")
!3189 = !{!3186}
!3190 = !DILocation(line: 93, column: 6, scope: !3187, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 7, column: 21, scope: !3182)
!3192 = !DILocation(line: 7, column: 60, scope: !3182)
!3193 = !DILocalVariable(name: "x", arg: 1, scope: !3194, file: !3195, line: 48, type: !450)
!3194 = distinct !DISubprogram(name: "math.Pow", linkageName: "math.Pow", scope: !3195, file: !3195, line: 48, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3196)
!3195 = !DIFile(filename: "pow.go", directory: "/usr/local/go/src/math")
!3196 = !{!3193, !3197}
!3197 = !DILocalVariable(name: "y", arg: 2, scope: !3194, file: !3195, line: 48, type: !450)
!3198 = !DILocation(line: 52, column: 13, scope: !3194, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 7, column: 51, scope: !3182)
!3200 = !DILocation(line: 52, column: 16, scope: !3194, inlinedAt: !3199)
!3201 = !DILocalVariable(name: "x", arg: 1, scope: !3202, file: !3195, line: 55, type: !450)
!3202 = distinct !DISubprogram(name: "math.pow", linkageName: "math.pow", scope: !3195, file: !3195, line: 55, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3203)
!3203 = !{!3201, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211}
!3204 = !DILocalVariable(name: "y", arg: 2, scope: !3202, file: !3195, line: 55, type: !450)
!3205 = !DILocalVariable(name: "yi", scope: !3202, file: !3195, line: 101, type: !450)
!3206 = !DILocalVariable(name: "yf", scope: !3202, file: !3195, line: 101, type: !450)
!3207 = !DILocalVariable(name: "a1", scope: !3202, file: !3195, line: 119, type: !450)
!3208 = !DILocalVariable(name: "ae", scope: !3202, file: !3195, line: 120, type: !1739)
!3209 = !DILocalVariable(name: "x1", scope: !3202, file: !3195, line: 135, type: !450)
!3210 = !DILocalVariable(name: "xe", scope: !3202, file: !3195, line: 135, type: !1739)
!3211 = !DILocalVariable(name: "i", scope: !3202, file: !3195, line: 136, type: !1699)
!3212 = !DILocation(line: 55, column: 6, scope: !3202, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 52, column: 12, scope: !3194, inlinedAt: !3199)
!3214 = !DILocation(line: 57, column: 7, scope: !3202, inlinedAt: !3213)
!3215 = !DILocation(line: 0, scope: !3202, inlinedAt: !3213)
!3216 = !DILocation(line: 7, column: 59, scope: !3182)
!3217 = !DILocation(line: 59, column: 7, scope: !3202, inlinedAt: !3213)
!3218 = !DILocation(line: 59, column: 9, scope: !3202, inlinedAt: !3213)
!3219 = !DILocation(line: 61, column: 13, scope: !3202, inlinedAt: !3213)
!3220 = !DILocation(line: 61, column: 25, scope: !3202, inlinedAt: !3213)
!3221 = !DILocation(line: 63, column: 7, scope: !3202, inlinedAt: !3213)
!3222 = !DILocation(line: 63, column: 9, scope: !3202, inlinedAt: !3213)
!3223 = !DILocation(line: 65, column: 8, scope: !3202, inlinedAt: !3213)
!3224 = !DILocation(line: 65, column: 10, scope: !3202, inlinedAt: !3213)
!3225 = !DILocation(line: 66, column: 15, scope: !3202, inlinedAt: !3213)
!3226 = !DILocalVariable(name: "x", arg: 1, scope: !3227, file: !3228, line: 8, type: !450)
!3227 = distinct !DISubprogram(name: "math.Signbit", linkageName: "math.Signbit", scope: !3228, file: !3228, line: 8, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3229)
!3228 = !DIFile(filename: "signbit.go", directory: "/usr/local/go/src/math")
!3229 = !{!3226}
!3230 = !DILocation(line: 9, column: 27, scope: !3227, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 66, column: 14, scope: !3202, inlinedAt: !3213)
!3232 = !DILocation(line: 35, column: 6, scope: !1786, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 9, column: 26, scope: !3227, inlinedAt: !3231)
!3234 = !DILocation(line: 35, column: 45, scope: !1786, inlinedAt: !3233)
!3235 = !DILocation(line: 9, column: 31, scope: !3227, inlinedAt: !3231)
!3236 = !DILocation(line: 66, column: 30, scope: !3202, inlinedAt: !3213)
!3237 = !DILocalVariable(name: "x", arg: 1, scope: !3238, file: !3195, line: 7, type: !450)
!3238 = distinct !DISubprogram(name: "math.isOddInt", linkageName: "math.isOddInt", scope: !3195, file: !3195, line: 7, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3239)
!3239 = !{!3237, !3240, !3241}
!3240 = !DILocalVariable(name: "xi", scope: !3238, file: !3195, line: 17, type: !450)
!3241 = !DILocalVariable(name: "xf", scope: !3238, file: !3195, line: 17, type: !450)
!3242 = !DILocation(line: 8, column: 9, scope: !3238, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 66, column: 29, scope: !3202, inlinedAt: !3213)
!3244 = !DILocalVariable(name: "x", arg: 1, scope: !3245, file: !3246, line: 13, type: !450)
!3245 = distinct !DISubprogram(name: "math.Abs", linkageName: "math.Abs", scope: !3246, file: !3246, line: 13, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3247)
!3246 = !DIFile(filename: "abs.go", directory: "/usr/local/go/src/math")
!3247 = !{!3244}
!3248 = !DILocation(line: 14, column: 37, scope: !3245, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 8, column: 8, scope: !3238, inlinedAt: !3243)
!3250 = !DILocation(line: 17, column: 17, scope: !3238, inlinedAt: !3243)
!3251 = !DILocalVariable(name: "f", arg: 1, scope: !3252, file: !3253, line: 14, type: !450)
!3252 = distinct !DISubprogram(name: "math.Modf", linkageName: "math.Modf", scope: !3253, file: !3253, line: 14, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3254)
!3253 = !DIFile(filename: "modf.go", directory: "/usr/local/go/src/math")
!3254 = !{!3251, !3255, !3256}
!3255 = !DILocalVariable(name: "integer", scope: !3252, file: !3253, line: 14, type: !450)
!3256 = !DILocalVariable(name: "fractional", scope: !3252, file: !3253, line: 14, type: !450)
!3257 = !DILocation(line: 15, column: 18, scope: !3252, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 17, column: 16, scope: !3238, inlinedAt: !3243)
!3259 = !DILocalVariable(name: "x", arg: 1, scope: !3260, file: !3261, line: 61, type: !450)
!3260 = distinct !DISubprogram(name: "math.Trunc", linkageName: "math.Trunc", scope: !3261, file: !3261, line: 61, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3262)
!3261 = !DIFile(filename: "floor.go", directory: "/usr/local/go/src/math")
!3262 = !{!3259}
!3263 = !DILocation(line: 61, column: 6, scope: !3260, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 15, column: 17, scope: !3252, inlinedAt: !3258)
!3265 = !DILocation(line: 16, column: 26, scope: !3252, inlinedAt: !3258)
!3266 = !DILocation(line: 11, column: 37, scope: !1801, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 16, column: 23, scope: !3252, inlinedAt: !3258)
!3268 = !DILocation(line: 11, column: 63, scope: !1801, inlinedAt: !3267)
!3269 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 11, column: 24, scope: !1801, inlinedAt: !3267)
!3271 = !DILocation(line: 16, column: 2, scope: !3252, inlinedAt: !3258)
!3272 = !DILocation(line: 17, column: 2, scope: !3238, inlinedAt: !3243)
!3273 = !DILocation(line: 18, column: 9, scope: !3238, inlinedAt: !3243)
!3274 = !DILocation(line: 18, column: 12, scope: !3238, inlinedAt: !3243)
!3275 = !DILocation(line: 0, scope: !3238, inlinedAt: !3243)
!3276 = !DILocation(line: 18, column: 26, scope: !3238, inlinedAt: !3243)
!3277 = !DILocation(line: 18, column: 25, scope: !3238, inlinedAt: !3243)
!3278 = !DILocation(line: 18, column: 29, scope: !3238, inlinedAt: !3243)
!3279 = !DILocation(line: 18, column: 32, scope: !3238, inlinedAt: !3243)
!3280 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 27, column: 24, scope: !1825, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 69, column: 14, scope: !3202, inlinedAt: !3213)
!3283 = !DILocation(line: 69, column: 4, scope: !3202, inlinedAt: !3213)
!3284 = !DILocation(line: 70, column: 8, scope: !3202, inlinedAt: !3213)
!3285 = !DILocation(line: 70, column: 10, scope: !3202, inlinedAt: !3213)
!3286 = !DILocation(line: 14, column: 40, scope: !3245, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 101, column: 20, scope: !3202, inlinedAt: !3213)
!3288 = !DILocation(line: 71, column: 15, scope: !3202, inlinedAt: !3213)
!3289 = !DILocation(line: 9, column: 27, scope: !3227, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 71, column: 14, scope: !3202, inlinedAt: !3213)
!3291 = !DILocation(line: 35, column: 6, scope: !1786, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 9, column: 26, scope: !3227, inlinedAt: !3290)
!3293 = !DILocation(line: 35, column: 45, scope: !1786, inlinedAt: !3292)
!3294 = !DILocation(line: 9, column: 31, scope: !3227, inlinedAt: !3290)
!3295 = !DILocation(line: 71, column: 30, scope: !3202, inlinedAt: !3213)
!3296 = !DILocation(line: 8, column: 9, scope: !3238, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 71, column: 29, scope: !3202, inlinedAt: !3213)
!3298 = !DILocation(line: 14, column: 37, scope: !3245, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 8, column: 8, scope: !3238, inlinedAt: !3297)
!3300 = !DILocation(line: 17, column: 17, scope: !3238, inlinedAt: !3297)
!3301 = !DILocation(line: 15, column: 18, scope: !3252, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 17, column: 16, scope: !3238, inlinedAt: !3297)
!3303 = !DILocation(line: 61, column: 6, scope: !3260, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 15, column: 17, scope: !3252, inlinedAt: !3302)
!3305 = !DILocation(line: 16, column: 26, scope: !3252, inlinedAt: !3302)
!3306 = !DILocation(line: 11, column: 37, scope: !1801, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 16, column: 23, scope: !3252, inlinedAt: !3302)
!3308 = !DILocation(line: 11, column: 63, scope: !1801, inlinedAt: !3307)
!3309 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 11, column: 24, scope: !1801, inlinedAt: !3307)
!3311 = !DILocation(line: 16, column: 2, scope: !3252, inlinedAt: !3302)
!3312 = !DILocation(line: 17, column: 2, scope: !3238, inlinedAt: !3297)
!3313 = !DILocation(line: 18, column: 9, scope: !3238, inlinedAt: !3297)
!3314 = !DILocation(line: 18, column: 12, scope: !3238, inlinedAt: !3297)
!3315 = !DILocation(line: 0, scope: !3238, inlinedAt: !3297)
!3316 = !DILocation(line: 18, column: 26, scope: !3238, inlinedAt: !3297)
!3317 = !DILocation(line: 18, column: 25, scope: !3238, inlinedAt: !3297)
!3318 = !DILocation(line: 18, column: 29, scope: !3238, inlinedAt: !3297)
!3319 = !DILocation(line: 18, column: 32, scope: !3238, inlinedAt: !3297)
!3320 = !DILocation(line: 74, column: 4, scope: !3202, inlinedAt: !3213)
!3321 = !DILocation(line: 101, column: 21, scope: !3202, inlinedAt: !3213)
!3322 = !DILocation(line: 14, column: 37, scope: !3245, inlinedAt: !3287)
!3323 = !DILocation(line: 15, column: 18, scope: !3252, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 101, column: 16, scope: !3202, inlinedAt: !3213)
!3325 = !DILocation(line: 61, column: 6, scope: !3260, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 15, column: 17, scope: !3252, inlinedAt: !3324)
!3327 = !DILocation(line: 16, column: 26, scope: !3252, inlinedAt: !3324)
!3328 = !DILocation(line: 16, column: 25, scope: !3252, inlinedAt: !3324)
!3329 = !DILocation(line: 11, column: 37, scope: !1801, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 16, column: 23, scope: !3252, inlinedAt: !3324)
!3331 = !DILocation(line: 11, column: 63, scope: !1801, inlinedAt: !3330)
!3332 = !DILocation(line: 41, column: 6, scope: !1811, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 11, column: 24, scope: !1801, inlinedAt: !3330)
!3334 = !DILocation(line: 41, column: 49, scope: !1811, inlinedAt: !3333)
!3335 = !DILocation(line: 16, column: 2, scope: !3252, inlinedAt: !3324)
!3336 = !DILocation(line: 101, column: 2, scope: !3202, inlinedAt: !3213)
!3337 = !DILocation(line: 102, column: 5, scope: !3202, inlinedAt: !3213)
!3338 = !DILocation(line: 102, column: 8, scope: !3202, inlinedAt: !3213)
!3339 = !DILocation(line: 102, column: 16, scope: !3202, inlinedAt: !3213)
!3340 = !DILocation(line: 105, column: 5, scope: !3202, inlinedAt: !3213)
!3341 = !DILocation(line: 105, column: 8, scope: !3202, inlinedAt: !3213)
!3342 = !DILocation(line: 109, column: 8, scope: !3202, inlinedAt: !3213)
!3343 = !DILocation(line: 109, column: 10, scope: !3202, inlinedAt: !3213)
!3344 = !DILocation(line: 111, column: 13, scope: !3202, inlinedAt: !3213)
!3345 = !DILocation(line: 14, column: 37, scope: !3245, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 111, column: 12, scope: !3202, inlinedAt: !3213)
!3347 = !DILocation(line: 14, column: 40, scope: !3245, inlinedAt: !3346)
!3348 = !DILocation(line: 111, column: 16, scope: !3202, inlinedAt: !3213)
!3349 = !DILocation(line: 111, column: 25, scope: !3202, inlinedAt: !3213)
!3350 = !DILocation(line: 111, column: 21, scope: !3202, inlinedAt: !3213)
!3351 = !DILocation(line: 119, column: 2, scope: !3202, inlinedAt: !3213)
!3352 = !DILocation(line: 120, column: 2, scope: !3202, inlinedAt: !3213)
!3353 = !DILocation(line: 123, column: 5, scope: !3202, inlinedAt: !3213)
!3354 = !DILocation(line: 124, column: 6, scope: !3202, inlinedAt: !3213)
!3355 = !DILocation(line: 124, column: 9, scope: !3202, inlinedAt: !3213)
!3356 = !DILocation(line: 128, column: 12, scope: !3202, inlinedAt: !3213)
!3357 = !DILocation(line: 128, column: 21, scope: !3202, inlinedAt: !3213)
!3358 = !DILocalVariable(name: "x", arg: 1, scope: !3359, file: !3360, line: 81, type: !450)
!3359 = distinct !DISubprogram(name: "math.Log", linkageName: "math.Log", scope: !3360, file: !3360, line: 81, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3361)
!3360 = !DIFile(filename: "log.go", directory: "/usr/local/go/src/math")
!3361 = !{!3358}
!3362 = !DILocation(line: 81, column: 6, scope: !3359, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 128, column: 20, scope: !3202, inlinedAt: !3213)
!3364 = !DILocation(line: 128, column: 15, scope: !3202, inlinedAt: !3213)
!3365 = !DILocalVariable(name: "x", arg: 1, scope: !3366, file: !3367, line: 16, type: !450)
!3366 = distinct !DISubprogram(name: "math.Exp", linkageName: "math.Exp", scope: !3367, file: !3367, line: 16, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3368)
!3367 = !DIFile(filename: "exp.go", directory: "/usr/local/go/src/math")
!3368 = !{!3365}
!3369 = !DILocation(line: 16, column: 6, scope: !3366, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 128, column: 11, scope: !3202, inlinedAt: !3213)
!3371 = !DILocation(line: 128, column: 3, scope: !3202, inlinedAt: !3213)
!3372 = !DILocation(line: 135, column: 18, scope: !3202, inlinedAt: !3213)
!3373 = !DILocation(line: 135, column: 2, scope: !3202, inlinedAt: !3213)
!3374 = !DILocation(line: 135, column: 6, scope: !3202, inlinedAt: !3213)
!3375 = !DILocation(line: 136, column: 17, scope: !3202, inlinedAt: !3213)
!3376 = !DILocation(line: 136, column: 16, scope: !3202, inlinedAt: !3213)
!3377 = !DILocation(line: 136, column: 6, scope: !3202, inlinedAt: !3213)
!3378 = !DILocation(line: 136, column: 24, scope: !3202, inlinedAt: !3213)
!3379 = !DILocation(line: 135, column: 17, scope: !3202, inlinedAt: !3213)
!3380 = !DILocation(line: 136, column: 22, scope: !3202, inlinedAt: !3213)
!3381 = !DILocation(line: 137, column: 29, scope: !3202, inlinedAt: !3213)
!3382 = !DILocation(line: 143, column: 10, scope: !3202, inlinedAt: !3213)
!3383 = !DILocation(line: 143, column: 4, scope: !3202, inlinedAt: !3213)
!3384 = !DILocation(line: 146, column: 6, scope: !3202, inlinedAt: !3213)
!3385 = !DILocation(line: 146, column: 7, scope: !3202, inlinedAt: !3213)
!3386 = !DILocation(line: 146, column: 10, scope: !3202, inlinedAt: !3213)
!3387 = !DILocation(line: 150, column: 9, scope: !3202, inlinedAt: !3213)
!3388 = !DILocation(line: 150, column: 3, scope: !3202, inlinedAt: !3213)
!3389 = !DILocation(line: 151, column: 3, scope: !3202, inlinedAt: !3213)
!3390 = !DILocation(line: 152, column: 9, scope: !3202, inlinedAt: !3213)
!3391 = !DILocation(line: 136, column: 30, scope: !3202, inlinedAt: !3213)
!3392 = !DILocation(line: 161, column: 5, scope: !3202, inlinedAt: !3213)
!3393 = !DILocation(line: 161, column: 7, scope: !3202, inlinedAt: !3213)
!3394 = !DILocation(line: 162, column: 12, scope: !3202, inlinedAt: !3213)
!3395 = !DILocation(line: 162, column: 10, scope: !3202, inlinedAt: !3213)
!3396 = !DILocation(line: 162, column: 3, scope: !3202, inlinedAt: !3213)
!3397 = !DILocation(line: 163, column: 9, scope: !3202, inlinedAt: !3213)
!3398 = !DILocation(line: 163, column: 8, scope: !3202, inlinedAt: !3213)
!3399 = !DILocation(line: 163, column: 3, scope: !3202, inlinedAt: !3213)
!3400 = !DILocation(line: 165, column: 15, scope: !3202, inlinedAt: !3213)
!3401 = !DILocation(line: 165, column: 19, scope: !3202, inlinedAt: !3213)
!3402 = !DILocation(line: 165, column: 14, scope: !3202, inlinedAt: !3213)
!3403 = !DILocation(line: 165, column: 2, scope: !3202, inlinedAt: !3213)
!3404 = !DILocation(line: 76, column: 13, scope: !3202, inlinedAt: !3213)
!3405 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 76, column: 12, scope: !3202, inlinedAt: !3213)
!3407 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !3406)
!3408 = !DILocation(line: 0, scope: !1761, inlinedAt: !3406)
!3409 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !3406)
!3410 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !3406)
!3411 = !DILocation(line: 78, column: 8, scope: !3202, inlinedAt: !3213)
!3412 = !DILocation(line: 78, column: 10, scope: !3202, inlinedAt: !3213)
!3413 = !DILocation(line: 80, column: 13, scope: !3202, inlinedAt: !3213)
!3414 = !DILocation(line: 14, column: 37, scope: !3245, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 80, column: 12, scope: !3202, inlinedAt: !3213)
!3416 = !DILocation(line: 14, column: 40, scope: !3245, inlinedAt: !3415)
!3417 = !DILocation(line: 80, column: 30, scope: !3202, inlinedAt: !3213)
!3418 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 80, column: 29, scope: !3202, inlinedAt: !3213)
!3420 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !3419)
!3421 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !3419)
!3422 = !DILocation(line: 80, column: 21, scope: !3202, inlinedAt: !3213)
!3423 = !DILocation(line: 85, column: 13, scope: !3202, inlinedAt: !3213)
!3424 = !DILocation(line: 46, column: 6, scope: !1761, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 85, column: 12, scope: !3202, inlinedAt: !3213)
!3426 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !3425)
!3427 = !DILocation(line: 0, scope: !1761, inlinedAt: !3425)
!3428 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !3425)
!3429 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !3425)
!3430 = !DILocation(line: 86, column: 12, scope: !3202, inlinedAt: !3213)
!3431 = !DILocation(line: 51, column: 5, scope: !1761, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 86, column: 11, scope: !3202, inlinedAt: !3213)
!3433 = !DILocation(line: 56, column: 9, scope: !1761, inlinedAt: !3432)
!3434 = !DILocation(line: 56, column: 11, scope: !1761, inlinedAt: !3432)
!3435 = !DILocation(line: 87, column: 17, scope: !3202, inlinedAt: !3213)
!3436 = !DILocation(line: 87, column: 16, scope: !3202, inlinedAt: !3213)
!3437 = !DILocation(line: 87, column: 21, scope: !3202, inlinedAt: !3213)
!3438 = !DILocation(line: 87, column: 20, scope: !3202, inlinedAt: !3213)
!3439 = !DILocation(line: 57, column: 9, scope: !3202, inlinedAt: !3213)
!3440 = !DILocation(line: 90, column: 8, scope: !3202, inlinedAt: !3213)
!3441 = !DILocation(line: 90, column: 10, scope: !3202, inlinedAt: !3213)
!3442 = !DILocation(line: 92, column: 8, scope: !3202, inlinedAt: !3213)
!3443 = !DILocation(line: 92, column: 10, scope: !3202, inlinedAt: !3213)
!3444 = !DILocation(line: 95, column: 7, scope: !3202, inlinedAt: !3213)
!3445 = !DILocation(line: 95, column: 9, scope: !3202, inlinedAt: !3213)
!3446 = !DILocation(line: 96, column: 15, scope: !3202, inlinedAt: !3213)
!3447 = !DILocation(line: 93, column: 6, scope: !3187, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 96, column: 14, scope: !3202, inlinedAt: !3213)
!3449 = !DILocation(line: 96, column: 3, scope: !3202, inlinedAt: !3213)
!3450 = !DILocation(line: 97, column: 7, scope: !3202, inlinedAt: !3213)
!3451 = !DILocation(line: 97, column: 9, scope: !3202, inlinedAt: !3213)
!3452 = !DILocation(line: 98, column: 19, scope: !3202, inlinedAt: !3213)
!3453 = !DILocation(line: 93, column: 6, scope: !3187, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 98, column: 18, scope: !3202, inlinedAt: !3213)
!3455 = !DILocation(line: 98, column: 12, scope: !3202, inlinedAt: !3213)
!3456 = !DILocation(line: 98, column: 3, scope: !3202, inlinedAt: !3213)
!3457 = !DILocation(line: 7, column: 41, scope: !3182)
!3458 = !DILocation(line: 7, column: 2, scope: !3182)
