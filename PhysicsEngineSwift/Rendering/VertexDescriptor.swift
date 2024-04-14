import MetalKit

extension MTLVertexDescriptor {
  static var defaultLayout: MTLVertexDescriptor {
    let vertexDescriptor = MTLVertexDescriptor()
    vertexDescriptor.attributes[0].format = .float4
    vertexDescriptor.attributes[0].offset = 0
    vertexDescriptor.attributes[0].bufferIndex = 0

    let stride = MemoryLayout<Float>.stride * 4
    vertexDescriptor.layouts[0].stride = stride
    return vertexDescriptor
  }
}
