# Intelligent-Miniature-Vehicle-Based-on-FPGA
Intelligent Miniature Vehicle Based on FPGA


这是一个基于Verilog HDL实现的智能小车控制系统，集成了超声波避障、红外寻迹和预设路径行驶等多种功能模式。项目采用模块化设计，top.v作为顶层模块整合系统接口，xiaoche.v作为核心控制模块实现四种工作模式（超声波避障、寻迹导航、两种预设路径）的智能切换，通过PosCounter.v处理三路超声波测距，xunji.v实现7路红外传感器的精准寻迹逻辑，而everything.v和boche.v分别执行不同的预设路径动作序列。整个系统具备PWM智能调速、多传感器融合和实时决策能力，代码结构清晰，便于学习和二次开发。



⚠️ 重要声明
本项目仅供学习交流使用，未经作者明确授权，禁止任何形式的商业用途。欢迎各位开发者学习、修改和分享，也诚挚邀请各位大佬提出宝贵建议或直接贡献代码改进！
